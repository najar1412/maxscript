/*
	Vray Proxy Maker
	vhdev
	
	TODO: Check if vray is current rendered.
	TODO: Check if objects are instances of each other.
	TODO: Copy maps to save location
*/

-- Select renderer
vr = renderers.current

save_path = getSavePath caption:"Save proxies too..."

rollout proxy_tool "Vray Proxy Maker"
(
	group "" (
		label Label02 "Select any number of objects, and hit create."
	)
	group "" (
	-- Need some sort of 'successful dialog'
	button create_proxy "Create"
	on create_proxy pressed do for obj in $ do vrayMeshExport meshFile:(save_path+obj.name) autoCreateProxies:true
	)
)

createDialog proxy_tool width:250
