local State = { enabled = 'installed', disabled = 'uninstalled' }

local plugin = {
    name = 'Plugin name',
    type = 'PluginName',
    version = '0.1.0',
    description = '',
}

--- Defines the properties for defining a plugin.
-- @see declare_plugin
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

declare_plugin(plugin.type, DeclarePluginProperties)
plugin_done()
