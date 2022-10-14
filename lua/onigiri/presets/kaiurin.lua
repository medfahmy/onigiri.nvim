local colors = {
    gray = {
        [1]  = '#2b2927', -- '#342d2c',
        [2]  = '#2e2c2a', -- '#2e2c2a',
        [3]  = '#3a3837', -- '#3a3837',
        [4]  = '#42413f', -- '#42413f',
        [5]  = '#747372', -- '#747372',
        [6]  = '#8a8888', -- '#8a8888',
        [7]  = '#a09f9f', -- '#a09f9f',
        [8]  = '#b7b6b6', -- '#b7b6b6',
        [9]  = '#cecdce', -- '#cecdce'
        [10] = '#e6e5e7', --  #e6e5e7

    },
    blue = {
        [1] = '#1c4c70',
        [2] = '#1d71b2',
        [3] = '#2497ef',
        [4] = '#4bb1ff',
        [5] = '#79c4fc',
        [6] = '#acd4f5',
    },
    cyan = {
        [1] = '#1b5653',
        [2] = '#108984',
        [3] = '#05bbb5',
        [4] = '#21d6d2',
        [5] = '#63dbd9',
        [6] = '#a4e0e0',
    },
    green = {
        [1] = '#225a35',
        [2] = '#1b9447',
        [3] = '#13ce58',
        [4] = '#2ee873',
        [5] = '#6de699',
        [6] = '#aae4c1',
    },
    magenta = {
        [1] = '#5b234b',
        [2] = '#912274',
        [3] = '#c6219d',
        [4] = '#e23db9',
        [5] = '#e375c8',
        [6] = '#e5add8',
    },
    red = {
        [1] = '#631a32',
        [2] = '#9f1042',
        [3] = '#dc0652',
        [4] = '#f7226e',
        [5] = '#f16396',
        [6] = '#eca4bf',
    },
    yellow = {
        [1] = '#746d21',
        [2] = '#b8b129',
        [3] = '#ede541',
        [4] = '#fff766',
        [5] = '#faf48e',
        [6] = '#f4f1b6',
    }
}
local rainbow = {
    red     = '#f7226d',
    orange  = '#ffbf00',
    yellow  = '#ede441',
    green   = '#2ce570',
    cyan    = '#18d5a9',
    blue    = '#4accec',
    purple  = '#73a7fa',
    magenta = '#9c8aff',
    mauve   = '#d479f5',
    pink    = '#f16ed9',
}
local vars = {
    Foreground = {
        surface  = colors.gray[5],
        muted    = colors.gray[6],
        default  = colors.gray[9],
        emphasis = colors.gray[10],
    },
    Shade = {
        default  = colors.gray[2],
        emphasis = colors.gray[1],
    },
    Background = {
        emphasis = colors.gray[1],
        default  = colors.gray[2],
        muted    = colors.gray[4],
    },
    Colors = {
        Trace     = rainbow.pink,
        Accent    = rainbow.magenta,
        Note      = rainbow.blue,
        Hint      = rainbow.cyan,
        Info      = rainbow.green,
        Important = rainbow.yellow,
        Warn      = rainbow.orange,
        Caution   = rainbow.mauve,
        Danger    = rainbow.pink,
        Error     = rainbow.red,
    }
}
return vars
