export default {
  title: "TailwindCLI",
  description: "Just playing around.",
  base: "/tailwind-cli/",
  cleanUrls: false,
  srcDir: './src',
  markdown: {
    lineNumbers: true,
    defaultHighlightLang: "dart",
  },
  head: [],
  themeConfig: {
    outline: [2, 4],
    socialLinks: [
      { icon: "github", link: "https://github.com/thedevsbuddy/tailwind_cli" },
      { icon: "instagram", link: "https://www.instagram.com/iamspydey" },
    ],
    footer: {
      message: "Released under the MIT License.",
      copyright: `Copyright © ${new Date().getFullYear()} All rights reserved by Devsbuddy.com`,
    },
    nav: [
      {
        text: "Home",
        link: "/",
      },
      {
        text: "Docs",
        link: "/introduction",
      },
      {
        text: "Blog",
        link: "https://devsbuddy.com/blog",
      },
      {
        text: "0.5.1",
        items: [
          {
            text: "Changelog",
            link: "https://github.com/thedevsbuddy/tailwind_cli/blob/main/CHANGELOG.md",
          },
        ],
      },
    ],
    sidebar: [
      {
        text: "Introduction",
        link: "/introduction",
      },
      {
        text: "Installation",
        link: "/installation",
      },
      {
        text: "Core Concepts",
        items: [
          { text: "UI Centric", link: "/core-concepts/ui-centric" },
          {
            text: "Reusable Styles",
            link: "/core-concepts/reusable-styles",
          },
          { text: "Dark Mode", link: "/core-concepts/dark-mode" },
          {
            text: "Adding Custom Styles",
            link: "/core-concepts/adding-custom-styles",
          },
        ],
      },
      {
        text: "Customizations",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Configuration", link: "/customizations/configuration" },
          { text: "Colors", link: "/customizations/colors" },
          { text: "Spacing", link: "/customizations/spacing" },
          { text: "Opacity", link: "/customizations/opacity" },
          { text: "Font Sizes", link: "/customizations/font-sizes" },
        ],
      },
      {
        text: "Widgets",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "TwButton", link: "/widgets/tw-button" },
          { text: "TwColumn", link: "/widgets/tw-column" },
          { text: "TwContainer", link: "/widgets/tw-container" },
          { text: "TwPadding", link: "/widgets/tw-padding" },
          { text: "TwRow", link: "/widgets/tw-row" },
          { text: "TwStack", link: "/widgets/tw-stack" },
          { text: "TwText", link: "/widgets/tw-text" },
          { text: "TwWrap", link: "/widgets/tw-wrap" },
          { text: "TwInkWell", link: "/widgets/tw-inkwell" },
        ],
      },
      {
        text: "Colors",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Background Color", link: "/colors/background-color" },
          { text: "Text Color", link: "/colors/text-color" },
          { text: "Border Color", link: "/colors/border-color" },
          { text: "Gradient Color", link: "/colors/gradient-color" },
          { text: "Dark Theme", link: "/colors/dark-theme" },
        ],
      },
      {
        text: "Extensions",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Methods", link: "/extensions/methods" },
          { text: "Getters", link: "/extensions/getters" },
        ],
      },
      {
        text: "Effects",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "Box Shadow", link: "/effects/box-shadow" },
          { text: "Opacity", link: "/effects/opacity" },
        ],
      },
      {
        text: "Examples",
        collapsible: true,
        collapsed: true,
        items: [
          { text: "eVault - Budget Tracking App", link: "#" },
          { text: "Example App", link: "#" },
        ],
      },
    ],
  },
};
