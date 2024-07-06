-- This isn't necessary, but it may be useful for future states.
local State = { enabled = 'installed', disabled = 'uninstalled' }

--- Represents the base plugin information we want.
local plugin = {
    name = 'Plugin name',
    type = 'PluginName',
    version = '0.1.0',
    description = 'This plugin is currently under development.',
}

--- Defines the properties for defining a plugin.
-- The bulk of declaring a plugin comes down to metadata and
-- file path information.
local DeclarePluginProperties = {
    dirName = current_mod_path,
    displayName = _(plugin.name),
    fileMenuName = _(plugin.name),
    installed = true,
    state = State.enabled,
    update_id = plugin.name,
    version = plugin.version,
    info = plugin.description,
}

--- Directly loads the plugin information established into EDGE.
declare_plugin(plugin.type, DeclarePluginProperties)

-- Signalling we're done with plugin entry.
plugin_done()
