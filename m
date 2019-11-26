Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4C5109737
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 01:09:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=by1bDEEbUBCtjXfj3FlobLF9z4oI9N0Mt/p9ZUJ89u0=; b=TzWcTDZ64+Wn3Y
	0fOHoN8LX9AtlsqQwvpRoSlzLqRQcnMUK+etOqg3bmMswluZgZthzxxPQWpJK76VC/DY7IU76qr5k
	Jdh6p/MbaDlPlEWeG/ulkJgv9YbreWmd3mXsdmB4V3EcjGGTrFGHQS0iJdOf+ti4YXT5oVTCv9va2
	Mz4sPLITQG8tp7MmRpVVph1wsqPbDT4QOdiscbs7twscvoffXz1iOO1MYS6o75V1bFoxaWchMfN97
	O/gykLTqUXwmyfbztxUXVfh3l0898XOfx9Z4MLQbtJpy6nuGOriwLckyqX0ufTnYAKhBvRbk/JKAr
	vbvN4mRkiWsj/P6ckd5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZOPe-0003wu-5r; Tue, 26 Nov 2019 00:09:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZOPT-0003vr-Ku
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 00:08:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
 Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8P/8XeXOzYAFUuectnnaLDPsuHrY8yYKdRxqYfHnPSI=; b=SkXQmzb3a22InUoKRPAL3NKzP
 JC9omUpcu+AITZX1z7CTLlVUQwWiydWnC4AmcSB+U5AgygkbCss3OUoN8F0U+LODqN3OIGG7ySbUG
 Xu7dTQWSUqAp9rPzaIyeoeR139caN+0qkXjpOzk+CL/LAyzTH+tKkH+pvgXVTeBEvuLqZLRKgWxhu
 tZPs6vosZ/Xwr0rPpObvSV7aZa8zIm/Kd2gouFhQKotptMgnyF13tF9EljVxMfi4qQudJ3SaQTHts
 cYGs7Fod0y8oGe2TYYCp6SpJFMS8A054AXmIxMLItDVEDu/pOcQrfQaYiojMgTQ4OJwe4ahf+ZpIi
 eDsPue+Qg==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:32992)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iZOPP-0002Nb-1q; Tue, 26 Nov 2019 00:08:47 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iZOPO-00077L-2B; Tue, 26 Nov 2019 00:08:46 +0000
Date: Tue, 26 Nov 2019 00:08:46 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
Message-ID: <20191126000845.GW25745@shell.armlinux.org.uk>
References: <E1iZHVW-0001Ji-VK@rmk-PC.armlinux.org.uk>
 <034901d5a3b0$f85c2e60$e9148b20$@adrianschmutzler.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <034901d5a3b0$f85c2e60$e9148b20$@adrianschmutzler.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_160852_304345_49B9288C 
X-CRM114-Status: GOOD (  33.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 1/4] kernel: remove obsolete phylink/SFP
 patches
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Nov 25, 2019 at 05:54:14PM +0100, Adrian Schmutzler wrote:
> Hi,
> =

> looks to me like a "mvebu:" prefix in commit titles would be more appropr=
iate than "kernel:", as you are only touching mvebu (if I haven't overlooke=
d it).

Well, I've had one suggestion that it should not be limited to mvebu.
If only I knew enough about openwrt to make it so, but I don't, and
openwrt's build system seems to be designed to be incomprehensible.

> Best
> =

> Adrian
> =

> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> > Behalf Of Russell King
> > Sent: Montag, 25. November 2019 17:47
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] [PATCH 1/4] kernel: remove obsolete phylink/SFP
> > patches
> > =

> > Remove the old phylink/SFP patches from the OpenWRT build; these will
> > be updated with a new set in subsequent.
> > =

> > 450-reprobe_sfp_phy is also removed for several reasons:
> > 1) it is not in mainline.
> > 2) it breaks copper modules that do not have a PHY.
> > 3) it makes backporting the current patch set harder.
> > =

> > Discussion is ongoing with the patch author for a mainline Linux kernel
> > patch for this.
> > =

> > Signed-off-by: Russell King <linux@armlinux.org.uk>
> > ---
> >  ...etdev-sfp_bus-and-use-for-start-stop.patch |  39 ---
> >  ...5-net-phy-marvell10g-add-SFP-support.patch | 155 ---------
> >  .../406-sfp-add-sfp-compatible.patch          |  24 --
> >  ...7-sfp-display-SFP-module-information.patch | 297 ------------------
> >  .../408-sfp-more-cotsworks-fixes.patch        |  44 ---
> >  .../patches-4.19/450-reprobe_sfp_phy.patch    |  94 ------
> >  6 files changed, 653 deletions(-)
> >  delete mode 100644 target/linux/mvebu/patches-4.19/404-sfp-provide-net=
dev-
> > sfp_bus-and-use-for-start-stop.patch
> >  delete mode 100644 target/linux/mvebu/patches-4.19/405-net-phy-marvell=
10g-
> > add-SFP-support.patch
> >  delete mode 100644 target/linux/mvebu/patches-4.19/406-sfp-add-sfp-
> > compatible.patch
> >  delete mode 100644 target/linux/mvebu/patches-4.19/407-sfp-display-SFP-
> > module-information.patch
> >  delete mode 100644 target/linux/mvebu/patches-4.19/408-sfp-more-cotswo=
rks-
> > fixes.patch
> >  delete mode 100644 target/linux/mvebu/patches-4.19/450-
> > reprobe_sfp_phy.patch
> > =

> > diff --git a/target/linux/mvebu/patches-4.19/404-sfp-provide-netdev-sfp=
_bus-
> > and-use-for-start-stop.patch b/target/linux/mvebu/patches-4.19/404-sfp-
> > provide-netdev-sfp_bus-and-use-for-start-stop.patch
> > deleted file mode 100644
> > index f2581ca6b733..000000000000
> > --- a/target/linux/mvebu/patches-4.19/404-sfp-provide-netdev-sfp_bus-an=
d-
> > use-for-start-stop.patch
> > +++ /dev/null
> > @@ -1,39 +0,0 @@
> > -From 0068a89747e7c1d9a0bbb7282a34382a4274638a Mon Sep 17 00:00:00 2001
> > -From: Russell King <rmk+kernel@armlinux.org.uk>
> > -Date: Fri, 14 Apr 2017 16:41:55 +0100
> > -Subject: [PATCH] sfp: provide netdev sfp_bus and use for start/stop
> > -
> > -Add a netdev sfp_bus pointer for propagating the phylink start/stop
> > -actions to the SFP cage: the SFP cage may not be directly connected to
> > -phylink, but may be the other side of a fixed PHY, and SFP needs to
> > -know when the netdev is brought up or taken down.
> > -
> > -Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ----
> > - drivers/net/phy/phylink.c | 8 ++++----
> > - 1 file changed, 4 insertions(+), 4 deletions(-)
> > -
> > ---- a/drivers/net/phy/phylink.c
> > -+++ b/drivers/net/phy/phylink.c
> > -@@ -949,8 +949,8 @@ void phylink_start(struct phylink *pl)
> > -
> > - 	if (pl->link_an_mode =3D=3D MLO_AN_FIXED && !IS_ERR(pl->link_gpio))
> > - 		mod_timer(&pl->link_poll, jiffies + HZ);
> > --	if (pl->sfp_bus)
> > --		sfp_upstream_start(pl->sfp_bus);
> > -+	if (pl->netdev->sfp_bus)
> > -+		sfp_upstream_start(pl->netdev->sfp_bus);
> > - 	if (pl->phydev)
> > - 		phy_start(pl->phydev);
> > - }
> > -@@ -971,8 +971,8 @@ void phylink_stop(struct phylink *pl)
> > -
> > - 	if (pl->phydev)
> > - 		phy_stop(pl->phydev);
> > --	if (pl->sfp_bus)
> > --		sfp_upstream_stop(pl->sfp_bus);
> > -+	if (pl->netdev->sfp_bus)
> > -+		sfp_upstream_stop(pl->netdev->sfp_bus);
> > - 	if (pl->link_an_mode =3D=3D MLO_AN_FIXED && !IS_ERR(pl->link_gpio))
> > - 		del_timer_sync(&pl->link_poll);
> > -
> > diff --git a/target/linux/mvebu/patches-4.19/405-net-phy-marvell10g-add=
-SFP-
> > support.patch b/target/linux/mvebu/patches-4.19/405-net-phy-marvell10g-=
add-
> > SFP-support.patch
> > deleted file mode 100644
> > index 9624b6cd8127..000000000000
> > --- a/target/linux/mvebu/patches-4.19/405-net-phy-marvell10g-add-SFP-
> > support.patch
> > +++ /dev/null
> > @@ -1,155 +0,0 @@
> > -From 5f3ac54810055fec0cc667bb04c16f783830abff Mon Sep 17 00:00:00 2001
> > -From: Russell King <rmk+kernel@armlinux.org.uk>
> > -Date: Fri, 14 Apr 2017 14:21:25 +0100
> > -Subject: [PATCH] net: phy: marvell10g: add SFP+ support
> > -
> > -Add support for SFP+ cages to the Marvell 10G PHY driver. This is
> > -slightly complicated by the way phylib works in that we need to use
> > -a multi-step process to attach the SFP bus, and we also need to track
> > -the phylink state machine to know when the module's transmit disable
> > -signal should change state.
> > -
> > -With appropriate DT changes, this allows the SFP+ canges on the
> > -Macchiatobin platform to be functional.
> > -
> > -Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ----
> > - drivers/net/phy/marvell10g.c | 80
> > ++++++++++++++++++++++++++++++++++++
> > - 1 file changed, 80 insertions(+)
> > -
> > ---- a/drivers/net/phy/marvell10g.c
> > -+++ b/drivers/net/phy/marvell10g.c
> > -@@ -25,6 +25,8 @@
> > - #include <linux/hwmon.h>
> > - #include <linux/marvell_phy.h>
> > - #include <linux/phy.h>
> > -+#include <linux/property.h>
> > -+#include <linux/sfp.h>
> > -
> > - enum {
> > - 	MV_PMA_BOOT		=3D 0xc050,
> > -@@ -56,6 +58,11 @@ enum {
> > - };
> > -
> > - struct mv3310_priv {
> > -+	struct fwnode_handle *sfp_fwnode;
> > -+	struct sfp_bus *sfp_bus;
> > -+	enum phy_state state;
> > -+	bool running;
> > -+
> > - 	struct device *hwmon_dev;
> > - 	char *hwmon_name;
> > - };
> > -@@ -219,6 +226,27 @@ static int mv3310_hwmon_probe(struct phy
> > - }
> > - #endif
> > -
> > -+static int mv3310_sfp_insert(void *upstream, const struct sfp_eeprom_=
id *id)
> > -+{
> > -+	struct phy_device *phydev =3D upstream;
> > -+	struct mv3310_priv *priv =3D dev_get_drvdata(&phydev->mdio.dev);
> > -+	__ETHTOOL_DECLARE_LINK_MODE_MASK(support) =3D { 0, };
> > -+	phy_interface_t iface;
> > -+
> > -+	sfp_parse_support(priv->sfp_bus, id, support);
> > -+	iface =3D sfp_select_interface(priv->sfp_bus, id, support);
> > -+
> > -+	if (iface !=3D PHY_INTERFACE_MODE_10GKR) {
> > -+		dev_err(&phydev->mdio.dev, "incompatible SFP module
> > inserted\n");
> > -+		return -EINVAL;
> > -+	}
> > -+	return 0;
> > -+}
> > -+
> > -+static const struct sfp_upstream_ops mv3310_sfp_ops =3D {
> > -+	.module_insert =3D mv3310_sfp_insert,
> > -+};
> > -+
> > - static int mv3310_probe(struct phy_device *phydev)
> > - {
> > - 	struct mv3310_priv *priv;
> > -@@ -249,9 +277,30 @@ static int mv3310_probe(struct phy_devic
> > - 	if (ret)
> > - 		return ret;
> > -
> > -+	if (phydev->mdio.dev.fwnode) {
> > -+		struct fwnode_reference_args ref;
> > -+		int ret;
> > -+
> > -+		ret =3D fwnode_property_get_reference_args(phydev-
> > >mdio.dev.fwnode,
> > -+							 "sfp", NULL, 0, 0,
> > -+							 &ref);
> > -+		if (ret =3D=3D 0)
> > -+			priv->sfp_fwnode =3D ref.fwnode;
> > -+	}
> > -+
> > - 	return 0;
> > - }
> > -
> > -+static void mv3310_remove(struct phy_device *phydev)
> > -+{
> > -+	struct mv3310_priv *priv =3D dev_get_drvdata(&phydev->mdio.dev);
> > -+
> > -+	if (priv->sfp_bus)
> > -+		sfp_unregister_upstream(priv->sfp_bus);
> > -+
> > -+	fwnode_handle_put(priv->sfp_fwnode);
> > -+}
> > -+
> > - static int mv3310_suspend(struct phy_device *phydev)
> > - {
> > - 	return 0;
> > -@@ -262,8 +311,29 @@ static int mv3310_resume(struct phy_devi
> > - 	return mv3310_hwmon_config(phydev, true);
> > - }
> > -
> > -+static void mv3310_link_change_notify(struct phy_device *phydev)
> > -+{
> > -+	struct mv3310_priv *priv =3D dev_get_drvdata(&phydev->mdio.dev);
> > -+	enum phy_state state =3D phydev->state;
> > -+	bool running;
> > -+
> > -+	if (priv->sfp_bus && priv->state !=3D state) {
> > -+		priv->state =3D state;
> > -+
> > -+		running =3D state >=3D PHY_UP && state < PHY_HALTED;
> > -+		if (priv->running !=3D running) {
> > -+			priv->running =3D running;
> > -+			if (running)
> > -+				sfp_upstream_start(priv->sfp_bus);
> > -+			else
> > -+				sfp_upstream_stop(priv->sfp_bus);
> > -+		}
> > -+	}
> > -+}
> > -+
> > - static int mv3310_config_init(struct phy_device *phydev)
> > - {
> > -+	struct mv3310_priv *priv =3D dev_get_drvdata(&phydev->mdio.dev);
> > - 	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported) =3D { 0, };
> > - 	u32 mask;
> > - 	int val;
> > -@@ -357,6 +427,14 @@ static int mv3310_config_init(struct phy
> > - 	phydev->supported &=3D mask;
> > - 	phydev->advertising &=3D phydev->supported;
> > -
> > -+	/* Would be nice to do this in the probe function, but unfortunately,
> > -+	 * phylib doesn't have phydev->attached_dev set there.
> > -+	 */
> > -+	if (priv->sfp_fwnode && !priv->sfp_bus)
> > -+		priv->sfp_bus =3D sfp_register_upstream(priv->sfp_fwnode,
> > -+						      phydev->attached_dev,
> > -+						      phydev, &mv3310_sfp_ops);
> > -+
> > - 	return 0;
> > - }
> > -
> > -@@ -566,6 +644,8 @@ static struct phy_driver mv3310_drivers[
> > - 		.config_aneg	=3D mv3310_config_aneg,
> > - 		.aneg_done	=3D mv3310_aneg_done,
> > - 		.read_status	=3D mv3310_read_status,
> > -+		.remove		=3D mv3310_remove,
> > -+		.link_change_notify =3D mv3310_link_change_notify,
> > - 	},
> > - };
> > -
> > diff --git a/target/linux/mvebu/patches-4.19/406-sfp-add-sfp-compatible=
.patch
> > b/target/linux/mvebu/patches-4.19/406-sfp-add-sfp-compatible.patch
> > deleted file mode 100644
> > index 0c6cb72cb9be..000000000000
> > --- a/target/linux/mvebu/patches-4.19/406-sfp-add-sfp-compatible.patch
> > +++ /dev/null
> > @@ -1,24 +0,0 @@
> > -From 7e8bf5227f87601d8d74948bcae8846d2bdd6995 Mon Sep 17 00:00:00 2001
> > -From: Russell King <rmk+kernel@armlinux.org.uk>
> > -Date: Fri, 14 Apr 2017 20:17:13 +0100
> > -Subject: [PATCH] sfp: add sfp+ compatible
> > -
> > -Add a compatible for SFP+ cages.  SFP+ cages are backwards compatible,
> > -but the ethernet device behind them may not support the slower speeds
> > -of SFP modules.
> > -
> > -Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ----
> > - drivers/net/phy/sfp.c | 1 +
> > - 1 file changed, 1 insertion(+)
> > -
> > ---- a/drivers/net/phy/sfp.c
> > -+++ b/drivers/net/phy/sfp.c
> > -@@ -230,6 +230,7 @@ static const struct sff_data sfp_data =3D
> > - static const struct of_device_id sfp_of_match[] =3D {
> > - 	{ .compatible =3D "sff,sff", .data =3D &sff_data, },
> > - 	{ .compatible =3D "sff,sfp", .data =3D &sfp_data, },
> > -+	{ .compatible =3D "sff,sfp+", .data =3D &sfp_data, },
> > - 	{ },
> > - };
> > - MODULE_DEVICE_TABLE(of, sfp_of_match);
> > diff --git a/target/linux/mvebu/patches-4.19/407-sfp-display-SFP-module-
> > information.patch b/target/linux/mvebu/patches-4.19/407-sfp-display-SFP-
> > module-information.patch
> > deleted file mode 100644
> > index 854ac68769f9..000000000000
> > --- a/target/linux/mvebu/patches-4.19/407-sfp-display-SFP-module-
> > information.patch
> > +++ /dev/null
> > @@ -1,297 +0,0 @@
> > -From 4ce55fb01c473bf1ad2048f8b4db62dca392e6d2 Mon Sep 17 00:00:00 2001
> > -From: Russell King <rmk+kernel@arm.linux.org.uk>
> > -Date: Sun, 13 Sep 2015 01:06:31 +0100
> > -Subject: [PATCH] sfp: display SFP module information
> > -
> > -Signed-off-by: Russell King <rmk+kernel@arm.linux.org.uk>
> > ----
> > - drivers/net/phy/sfp.c | 261
> > +++++++++++++++++++++++++++++++++++++++++-
> > - 1 file changed, 258 insertions(+), 3 deletions(-)
> > -
> > ---- a/drivers/net/phy/sfp.c
> > -+++ b/drivers/net/phy/sfp.c
> > -@@ -1132,6 +1132,184 @@ static void sfp_hwmon_remove(struct sfp
> > - }
> > - #endif
> > -
> > -+static const char *sfp_link_len(char *buf, size_t size, unsigned int =
length,
> > -+	unsigned int multiplier)
> > -+{
> > -+	if (length =3D=3D 0)
> > -+		return "unsupported/unspecified";
> > -+
> > -+	if (length =3D=3D 255) {
> > -+		*buf++ =3D '>';
> > -+		size -=3D 1;
> > -+		length -=3D 1;
> > -+	}
> > -+
> > -+	length *=3D multiplier;
> > -+
> > -+	if (length >=3D 1000)
> > -+		snprintf(buf, size, "%u.%0*ukm",
> > -+			length / 1000,
> > -+			multiplier > 100 ? 1 :
> > -+			multiplier > 10 ? 2 : 3,
> > -+			length % 1000);
> > -+	else
> > -+		snprintf(buf, size, "%um", length);
> > -+
> > -+	return buf;
> > -+}
> > -+
> > -+struct bitfield {
> > -+	unsigned int mask;
> > -+	unsigned int val;
> > -+	const char *str;
> > -+};
> > -+
> > -+static const struct bitfield sfp_options[] =3D {
> > -+	{
> > -+		.mask =3D SFP_OPTIONS_HIGH_POWER_LEVEL,
> > -+		.val =3D SFP_OPTIONS_HIGH_POWER_LEVEL,
> > -+		.str =3D "hpl",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_PAGING_A2,
> > -+		.val =3D SFP_OPTIONS_PAGING_A2,
> > -+		.str =3D "paginga2",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_RETIMER,
> > -+		.val =3D SFP_OPTIONS_RETIMER,
> > -+		.str =3D "retimer",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_COOLED_XCVR,
> > -+		.val =3D SFP_OPTIONS_COOLED_XCVR,
> > -+		.str =3D "cooled",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_POWER_DECL,
> > -+		.val =3D SFP_OPTIONS_POWER_DECL,
> > -+		.str =3D "powerdecl",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_RX_LINEAR_OUT,
> > -+		.val =3D SFP_OPTIONS_RX_LINEAR_OUT,
> > -+		.str =3D "rxlinear",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_RX_DECISION_THRESH,
> > -+		.val =3D SFP_OPTIONS_RX_DECISION_THRESH,
> > -+		.str =3D "rxthresh",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_TUNABLE_TX,
> > -+		.val =3D SFP_OPTIONS_TUNABLE_TX,
> > -+		.str =3D "tunabletx",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_RATE_SELECT,
> > -+		.val =3D SFP_OPTIONS_RATE_SELECT,
> > -+		.str =3D "ratesel",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_TX_DISABLE,
> > -+		.val =3D SFP_OPTIONS_TX_DISABLE,
> > -+		.str =3D "txdisable",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_TX_FAULT,
> > -+		.val =3D SFP_OPTIONS_TX_FAULT,
> > -+		.str =3D "txfault",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_LOS_INVERTED,
> > -+		.val =3D SFP_OPTIONS_LOS_INVERTED,
> > -+		.str =3D "los-",
> > -+	}, {
> > -+		.mask =3D SFP_OPTIONS_LOS_NORMAL,
> > -+		.val =3D SFP_OPTIONS_LOS_NORMAL,
> > -+		.str =3D "los+",
> > -+	}, { }
> > -+};
> > -+
> > -+static const struct bitfield diagmon[] =3D {
> > -+	{
> > -+		.mask =3D SFP_DIAGMON_DDM,
> > -+		.val =3D SFP_DIAGMON_DDM,
> > -+		.str =3D "ddm",
> > -+	}, {
> > -+		.mask =3D SFP_DIAGMON_INT_CAL,
> > -+		.val =3D SFP_DIAGMON_INT_CAL,
> > -+		.str =3D "intcal",
> > -+	}, {
> > -+		.mask =3D SFP_DIAGMON_EXT_CAL,
> > -+		.val =3D SFP_DIAGMON_EXT_CAL,
> > -+		.str =3D "extcal",
> > -+	}, {
> > -+		.mask =3D SFP_DIAGMON_RXPWR_AVG,
> > -+		.val =3D SFP_DIAGMON_RXPWR_AVG,
> > -+		.str =3D "rxpwravg",
> > -+	}, { }
> > -+};
> > -+
> > -+static const char *sfp_bitfield(char *out, size_t outsz, const struct=
 bitfield *bits,
> > unsigned int val)
> > -+{
> > -+	char *p =3D out;
> > -+	int n;
> > -+
> > -+	*p =3D '\0';
> > -+	while (bits->mask) {
> > -+		if ((val & bits->mask) =3D=3D bits->val) {
> > -+			n =3D snprintf(p, outsz, "%s%s",
> > -+				     out !=3D p ? ", " : "",
> > -+				     bits->str);
> > -+			if (n =3D=3D outsz)
> > -+				break;
> > -+			p +=3D n;
> > -+			outsz -=3D n;
> > -+		}
> > -+		bits++;
> > -+	}
> > -+
> > -+	return out;
> > -+}
> > -+
> > -+static const char *sfp_connector(unsigned int connector)
> > -+{
> > -+	switch (connector) {
> > -+	case SFP_CONNECTOR_UNSPEC:
> > -+		return "unknown/unspecified";
> > -+	case SFP_CONNECTOR_SC:
> > -+		return "SC";
> > -+	case SFP_CONNECTOR_FIBERJACK:
> > -+		return "Fiberjack";
> > -+	case SFP_CONNECTOR_LC:
> > -+		return "LC";
> > -+	case SFP_CONNECTOR_MT_RJ:
> > -+		return "MT-RJ";
> > -+	case SFP_CONNECTOR_MU:
> > -+		return "MU";
> > -+	case SFP_CONNECTOR_SG:
> > -+		return "SG";
> > -+	case SFP_CONNECTOR_OPTICAL_PIGTAIL:
> > -+		return "Optical pigtail";
> > -+	case SFP_CONNECTOR_HSSDC_II:
> > -+		return "HSSDC II";
> > -+	case SFP_CONNECTOR_COPPER_PIGTAIL:
> > -+		return "Copper pigtail";
> > -+	default:
> > -+		return "unknown";
> > -+	}
> > -+}
> > -+
> > -+static const char *sfp_encoding(unsigned int encoding)
> > -+{
> > -+	switch (encoding) {
> > -+	case SFP_ENCODING_UNSPEC:
> > -+		return "unspecified";
> > -+	case SFP_ENCODING_8472_64B66B:
> > -+		return "64b66b";
> > -+	case SFP_ENCODING_8B10B:
> > -+		return "8b10b";
> > -+	case SFP_ENCODING_4B5B:
> > -+		return "4b5b";
> > -+	case SFP_ENCODING_NRZ:
> > -+		return "NRZ";
> > -+	case SFP_ENCODING_8472_MANCHESTER:
> > -+		return "MANCHESTER";
> > -+	default:
> > -+		return "unknown";
> > -+	}
> > -+}
> > -+
> > - /* Helpers */
> > - static void sfp_module_tx_disable(struct sfp *sfp)
> > - {
> > -@@ -1376,6 +1554,8 @@ static int sfp_sm_mod_probe(struct sfp *
> > - {
> > - 	/* SFP module inserted - read I2C data */
> > - 	struct sfp_eeprom_id id;
> > -+	char date[9];
> > -+	char options[80];
> > - 	bool cotsworks;
> > - 	u8 check;
> > - 	int ret;
> > -@@ -1432,12 +1612,87 @@ static int sfp_sm_mod_probe(struct sfp *
> > -
> > - 	sfp->id =3D id;
> > -
> > --	dev_info(sfp->dev, "module %.*s %.*s rev %.*s sn %.*s dc %.*s\n",
> > -+	date[0] =3D sfp->id.ext.datecode[4];
> > -+	date[1] =3D sfp->id.ext.datecode[5];
> > -+	date[2] =3D '-';
> > -+	date[3] =3D sfp->id.ext.datecode[2];
> > -+	date[4] =3D sfp->id.ext.datecode[3];
> > -+	date[5] =3D '-';
> > -+	date[6] =3D sfp->id.ext.datecode[0];
> > -+	date[7] =3D sfp->id.ext.datecode[1];
> > -+	date[8] =3D '\0';
> > -+
> > -+	dev_info(sfp->dev, "module %.*s %.*s rev %.*s sn %.*s dc %s\n",
> > - 		 (int)sizeof(id.base.vendor_name), id.base.vendor_name,
> > - 		 (int)sizeof(id.base.vendor_pn), id.base.vendor_pn,
> > - 		 (int)sizeof(id.base.vendor_rev), id.base.vendor_rev,
> > --		 (int)sizeof(id.ext.vendor_sn), id.ext.vendor_sn,
> > --		 (int)sizeof(id.ext.datecode), id.ext.datecode);
> > -+		 (int)sizeof(id.ext.vendor_sn), id.ext.vendor_sn, date);
> > -+	dev_info(sfp->dev, "  %s connector, encoding %s, nominal bitrate
> > %u.%uGbps +%u%% -%u%%\n",
> > -+		 sfp_connector(sfp->id.base.connector),
> > -+		 sfp_encoding(sfp->id.base.encoding),
> > -+		 sfp->id.base.br_nominal / 10,
> > -+		 sfp->id.base.br_nominal % 10,
> > -+		 sfp->id.ext.br_max, sfp->id.ext.br_min);
> > -+	dev_info(sfp->dev, "  1000BaseSX%c 1000BaseLX%c 1000BaseCX%c
> > 1000BaseT%c 100BaseLX%c 100BaseFX%c BaseBX10%c BasePX%c\n",
> > -+		 sfp->id.base.e1000_base_sx ? '+' : '-',
> > -+		 sfp->id.base.e1000_base_lx ? '+' : '-',
> > -+		 sfp->id.base.e1000_base_cx ? '+' : '-',
> > -+		 sfp->id.base.e1000_base_t ? '+' : '-',
> > -+		 sfp->id.base.e100_base_lx ? '+' : '-',
> > -+		 sfp->id.base.e100_base_fx ? '+' : '-',
> > -+		 sfp->id.base.e_base_bx10 ? '+' : '-',
> > -+		 sfp->id.base.e_base_px ? '+' : '-');
> > -+	dev_info(sfp->dev, "  10GBaseSR%c 10GBaseLR%c 10GBaseLRM%c
> > 10GBaseER%c\n",
> > -+		 sfp->id.base.e10g_base_sr ? '+' : '-',
> > -+		 sfp->id.base.e10g_base_lr ? '+' : '-',
> > -+		 sfp->id.base.e10g_base_lrm ? '+' : '-',
> > -+		 sfp->id.base.e10g_base_er ? '+' : '-');
> > -+
> > -+	if (!sfp->id.base.sfp_ct_passive && !sfp->id.base.sfp_ct_active &&
> > -+	    !sfp->id.base.e1000_base_t) {
> > -+		char len_9um[16], len_om[16];
> > -+
> > -+		dev_info(sfp->dev, "  Wavelength %unm, fiber lengths:\n",
> > -+			 be16_to_cpup(&sfp->id.base.optical_wavelength));
> > -+
> > -+		if (sfp->id.base.link_len[0] =3D=3D 255)
> > -+			strcpy(len_9um, ">254km");
> > -+		else if (sfp->id.base.link_len[1] && sfp->id.base.link_len[1] !=3D
> > 255)
> > -+			sprintf(len_9um, "%um",
> > -+				sfp->id.base.link_len[1] * 100);
> > -+		else if (sfp->id.base.link_len[0])
> > -+			sprintf(len_9um, "%ukm", sfp->id.base.link_len[0]);
> > -+		else if (sfp->id.base.link_len[1] =3D=3D 255)
> > -+			strcpy(len_9um, ">25.4km");
> > -+		else
> > -+			strcpy(len_9um, "unsupported");
> > -+
> > -+		dev_info(sfp->dev, "    9=B5m SM    : %s\n", len_9um);
> > -+		dev_info(sfp->dev, " 62.5=B5m MM OM1: %s\n",
> > -+			 sfp_link_len(len_om, sizeof(len_om),
> > -+				      sfp->id.base.link_len[3], 10));
> > -+		dev_info(sfp->dev, "   50=B5m MM OM2: %s\n",
> > -+			 sfp_link_len(len_om, sizeof(len_om),
> > -+				      sfp->id.base.link_len[2], 10));
> > -+		dev_info(sfp->dev, "   50=B5m MM OM3: %s\n",
> > -+			 sfp_link_len(len_om, sizeof(len_om),
> > -+				      sfp->id.base.link_len[5], 10));
> > -+		dev_info(sfp->dev, "   50=B5m MM OM4: %s\n",
> > -+			 sfp_link_len(len_om, sizeof(len_om),
> > -+				      sfp->id.base.link_len[4], 10));
> > -+	} else {
> > -+		char len[16];
> > -+		dev_info(sfp->dev, "  Copper length: %s\n",
> > -+			 sfp_link_len(len, sizeof(len),
> > -+				      sfp->id.base.link_len[4], 1));
> > -+	}
> > -+
> > -+	dev_info(sfp->dev, "  Options: %s\n",
> > -+		 sfp_bitfield(options, sizeof(options), sfp_options,
> > -+			      be16_to_cpu(sfp->id.ext.options)));
> > -+	dev_info(sfp->dev, "  Diagnostics: %s\n",
> > -+		 sfp_bitfield(options, sizeof(options), diagmon,
> > -+			      sfp->id.ext.diagmon));
> > -
> > - 	/* Check whether we support this module */
> > - 	if (!sfp->type->module_supported(&sfp->id)) {
> > diff --git a/target/linux/mvebu/patches-4.19/408-sfp-more-cotsworks-
> > fixes.patch b/target/linux/mvebu/patches-4.19/408-sfp-more-cotsworks-
> > fixes.patch
> > deleted file mode 100644
> > index 69a31cb9f06c..000000000000
> > --- a/target/linux/mvebu/patches-4.19/408-sfp-more-cotsworks-fixes.patch
> > +++ /dev/null
> > @@ -1,44 +0,0 @@
> > -From e26af2726067ff260b77485df6af8375b82bfb1d Mon Sep 17 00:00:00 2001
> > -From: Russell King <rmk+kernel@armlinux.org.uk>
> > -Date: Sat, 23 Dec 2017 12:22:58 +0000
> > -Subject: [PATCH] sfp: more cotsworks fixes
> > -
> > -Cotsworks also gets the date code wrong.
> > -
> > -Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ----
> > - drivers/net/phy/sfp.c | 15 ++++++++-------
> > - 1 file changed, 8 insertions(+), 7 deletions(-)
> > -
> > ---- a/drivers/net/phy/sfp.c
> > -+++ b/drivers/net/phy/sfp.c
> > -@@ -1571,9 +1571,9 @@ static int sfp_sm_mod_probe(struct sfp *
> > - 		return -EAGAIN;
> > - 	}
> > -
> > --	/* Cotsworks do not seem to update the checksums when they
> > --	 * do the final programming with the final module part number,
> > --	 * serial number and date code.
> > -+	/* Cotsworks do not seem to update the checksums when they update
> > the
> > -+	 * module part number, serial number and date code. They also format
> > -+	 * the date code incorrectly.
> > - 	 */
> > - 	cotsworks =3D !memcmp(id.base.vendor_name, "COTSWORKS       ", 16);
> > -
> > -@@ -1612,11 +1612,12 @@ static int sfp_sm_mod_probe(struct sfp *
> > -
> > - 	sfp->id =3D id;
> > -
> > --	date[0] =3D sfp->id.ext.datecode[4];
> > --	date[1] =3D sfp->id.ext.datecode[5];
> > -+	/* Cotsworks also gets the date code wrong. */
> > -+	date[0] =3D sfp->id.ext.datecode[4 - 2 * cotsworks];
> > -+	date[1] =3D sfp->id.ext.datecode[5 - 2 * cotsworks];
> > - 	date[2] =3D '-';
> > --	date[3] =3D sfp->id.ext.datecode[2];
> > --	date[4] =3D sfp->id.ext.datecode[3];
> > -+	date[3] =3D sfp->id.ext.datecode[2 + 2 * cotsworks];
> > -+	date[4] =3D sfp->id.ext.datecode[3 + 2 * cotsworks];
> > - 	date[5] =3D '-';
> > - 	date[6] =3D sfp->id.ext.datecode[0];
> > - 	date[7] =3D sfp->id.ext.datecode[1];
> > diff --git a/target/linux/mvebu/patches-4.19/450-reprobe_sfp_phy.patch
> > b/target/linux/mvebu/patches-4.19/450-reprobe_sfp_phy.patch
> > deleted file mode 100644
> > index 833c515a111f..000000000000
> > --- a/target/linux/mvebu/patches-4.19/450-reprobe_sfp_phy.patch
> > +++ /dev/null
> > @@ -1,94 +0,0 @@
> > -From 28baa5e2635285b178326b301f534ed95c65dd01 Mon Sep 17 00:00:00 2001
> > -From: Jonas Gorski <jonas.gorski@gmail.com>
> > -Date: Thu, 29 Sep 2016 11:44:39 +0200
> > -Subject: [PATCH] sfp: retry phy probe if unsuccessful
> > -
> > -Some phys seem to take longer than 50 ms to come out of reset, so retry
> > -until we find a phy.
> > -
> > -Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>
> > ----
> > - drivers/net/phy/sfp.c | 38 +++++++++++++++++++++++++-------------
> > - 1 file changed, 25 insertions(+), 13 deletions(-)
> > -
> > ---- a/drivers/net/phy/sfp.c
> > -+++ b/drivers/net/phy/sfp.c
> > -@@ -1374,7 +1374,7 @@ static void sfp_sm_phy_detach(struct sfp
> > - 	sfp->mod_phy =3D NULL;
> > - }
> > -
> > --static void sfp_sm_probe_phy(struct sfp *sfp)
> > -+static int sfp_sm_probe_phy(struct sfp *sfp)
> > - {
> > - 	struct phy_device *phy;
> > - 	int err;
> > -@@ -1384,11 +1384,11 @@ static void sfp_sm_probe_phy(struct sfp
> > - 	phy =3D mdiobus_scan(sfp->i2c_mii, SFP_PHY_ADDR);
> > - 	if (phy =3D=3D ERR_PTR(-ENODEV)) {
> > - 		dev_info(sfp->dev, "no PHY detected\n");
> > --		return;
> > -+		return -EAGAIN;
> > - 	}
> > - 	if (IS_ERR(phy)) {
> > - 		dev_err(sfp->dev, "mdiobus scan returned %ld\n",
> > PTR_ERR(phy));
> > --		return;
> > -+		return PTR_ERR(phy);
> > - 	}
> > -
> > - 	err =3D sfp_add_phy(sfp->sfp_bus, phy);
> > -@@ -1396,11 +1396,13 @@ static void sfp_sm_probe_phy(struct sfp
> > - 		phy_device_remove(phy);
> > - 		phy_device_free(phy);
> > - 		dev_err(sfp->dev, "sfp_add_phy failed: %d\n", err);
> > --		return;
> > -+		return err;
> > - 	}
> > -
> > - 	sfp->mod_phy =3D phy;
> > - 	phy_start(phy);
> > -+
> > -+	return 0;
> > - }
> > -
> > - static void sfp_sm_link_up(struct sfp *sfp)
> > -@@ -1464,14 +1466,9 @@ static void sfp_sm_fault(struct sfp *sfp
> > -
> > - static void sfp_sm_mod_init(struct sfp *sfp)
> > - {
> > --	sfp_module_tx_enable(sfp);
> > -+	int ret =3D 0;
> > -
> > --	/* Wait t_init before indicating that the link is up, provided the
> > --	 * current state indicates no TX_FAULT.  If TX_FAULT clears before
> > --	 * this time, that's fine too.
> > --	 */
> > --	sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
> > --	sfp->sm_retries =3D 5;
> > -+	sfp_module_tx_enable(sfp);
> > -
> > - 	/* Setting the serdes link mode is guesswork: there's no
> > - 	 * field in the EEPROM which indicates what mode should
> > -@@ -1485,7 +1482,22 @@ static void sfp_sm_mod_init(struct sfp *
> > - 	if (sfp->id.base.e1000_base_t ||
> > - 	    sfp->id.base.e100_base_lx ||
> > - 	    sfp->id.base.e100_base_fx)
> > --		sfp_sm_probe_phy(sfp);
> > -+		ret =3D sfp_sm_probe_phy(sfp);
> > -+
> > -+	if (!ret) {
> > -+		/* Wait t_init before indicating that the link is up, provided
> > -+		 * the current state indicates no TX_FAULT.  If TX_FAULT clears
> > -+		 * this time, that's fine too.
> > -+		 */
> > -+		sfp_sm_next(sfp, SFP_S_INIT, T_INIT_JIFFIES);
> > -+		sfp->sm_retries =3D 5;
> > -+		return;
> > -+	}
> > -+
> > -+	if (ret =3D=3D -EAGAIN)
> > -+		sfp_sm_set_timer(sfp, T_PROBE_RETRY);
> > -+	else
> > -+		sfp_sm_next(sfp, SFP_S_TX_DISABLE, 0);
> > - }
> > -
> > - static int sfp_sm_mod_hpower(struct sfp *sfp)
> > --
> > 2.20.1
> > =

> > =

> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel



-- =

RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps =
up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
