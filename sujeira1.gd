extends Sprite

const OPACITY_OFFSET = 0.1

var m_fOpacity = 1.0

func _ready():
    set_process(true)

    pass


func _process(delta):
    self.set_opacity(m_fOpacity)
    m_fOpacity -= (OPACITY_OFFSET * delta)
    if (m_fOpacity < 0.0):
        m_fOpacity = 1.0
    update()

