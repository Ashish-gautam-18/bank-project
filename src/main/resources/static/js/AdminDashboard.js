
        function togglePanel(panelId) {
            const targets = document.querySelectorAll('.toggle-panel');
            targets.forEach(panel => {
                if (panel.id === panelId) {
                    panel.classList.toggle('hidden-element');
                } else {
                    panel.classList.add('hidden-element');
                }
            });
        }
    