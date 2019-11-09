Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCDCF5E40
	for <lists+openwrt-devel@lfdr.de>; Sat,  9 Nov 2019 10:37:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WJeFUlMBte4gzx7QRSTGY39G86YOpY0gtctC/FE1II=; b=BARnDEkf/VZdZR
	cH03uCXIUYAwlPHNgtxNmD38Zna4oncTLu9rtWfeEISXX/0JGuS6ZkhSk3YQQSyai/qA6Fy7kgwL/
	nNef4TeWuKwt+BliBWnXKtInxphfcgkBri+acW8H/xdQxcoombn+5wzZ+rdqrZzbdQXPsdNjCgC3T
	Y8KbT67xeqgKv14iW8bL3B2xPI+Q4BaKDDjen6XpIoZhau/JfDNYJBWqLsv1lIDNFomcHaCFbpcIN
	byVoT/qyBPgnjLn5W8eeOpjGZsjVtOvZBtwQggoU/EhDKXv7dz++tWhbCl62tzPgdpyRMjltEMd4a
	HOKqahvoSIXntK4ILbXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTNBP-0001hr-HZ; Sat, 09 Nov 2019 09:37:27 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTNBH-0001hB-3T
 for openwrt-devel@lists.openwrt.org; Sat, 09 Nov 2019 09:37:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id r10so9626631wrx.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 09 Nov 2019 01:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bg8cMSX7d/shIi+86HctrjPehDeZkbd2nsrdfStyWD8=;
 b=NgG7E4F4BZ5KVAyrJRHWGMDqMdik5/OX+CtEd4a/XK7uEkMAUc/h+e8D2xHnVUU2w9
 zPswUd3PdQrBREGlucDmPyWt2uqXzovnW9aCZEO0Ct9qV59M/bioE6SchZVnAnNRwRB4
 AdGQjhovjq2B5k8CLd7/F/orl/DcjLWH0IXXe2P/iVDuQLb0ZEXSEG5NBZ5NnrPDu3ky
 g2N7aihKjSM79mrwn2RCsAyniUYwaKBZjB0dw0J4CAZiJKxW+xlLIo0EHg5REZag30Ms
 s5OMFBNgfHcZo+K/iUhGZ0STc4vhOE2YZ2cMAyxWNTgGfi9zSJ/jB7f4w+8uIfJxtyoT
 xw7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bg8cMSX7d/shIi+86HctrjPehDeZkbd2nsrdfStyWD8=;
 b=iTtr5t3iuzTuGzPy28Lo+u7bKpj4t3voZbbygCsRzneWEWORJRGF1gqN1eYxIaSrk2
 u3ZximGZHtKPs9KInOs/FPcsow2OcflgVflvrPw2Km024bXnT6j5sPW9jTnefWqVcuLJ
 IgDpwX97SvD+L5A8n4HjKAU5Sp3BPSXVDurEtua8EOo6U3giqk7PEMyiWRwn9a1sTeKA
 lg9+BWwleFZZO5QRVPQv5bQQ08lHcFHRaLYPUR1Fo/MU3Wl+H6R6raGIPxRa1cxng0os
 ZqJga/42pjTSjLRe0+wPAb+SF9aaWLaEGSpriDWEYAYRoui/Z5DbQX7Fj2XF5kVuEJzK
 op6Q==
X-Gm-Message-State: APjAAAUfYVHcVU8qbsCyYBFzO/E9E4u8edt3rfHK8x4TmS/oUfI9W05j
 ZtHjgTyY7EpGQBzNg1PaSx+53Asn2zAtw/ou8Fg=
X-Google-Smtp-Source: APXvYqxlkpTJNNDJLjoHzfwfQwAyC7sYqyUnQwL3szSxD0gxHm+K5rlfzj+j3lvarA39CzZpEdyYZRYFFIdvzxKkH1w=
X-Received: by 2002:adf:e5c5:: with SMTP id a5mr12895655wrn.103.1573292236650; 
 Sat, 09 Nov 2019 01:37:16 -0800 (PST)
MIME-Version: 1.0
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <20191108114841.1343-3-freifunk@adrianschmutzler.de>
In-Reply-To: <20191108114841.1343-3-freifunk@adrianschmutzler.de>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 9 Nov 2019 10:37:23 +0100
Message-ID: <CAOiHx=naOdB-EKxGy4Ks06k9iZHAj0WmzFM-gTMc1LauG8heqA@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_013719_172703_55362D83 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] base-files: rename SSID with EUI of
 mac address
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Rosy Song <rosysong@rosinson.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 8 Nov 2019 at 12:49, Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> If the label MAC address is provided for a device, the default SSID
> will be set to contain the EUI of this address, e.g. OpenWrt-ddeeff.
>
> With multiple routers, this will help the user to identify his device
> based on the MAC address printed on the device.
>
> If no label MAC address is specified, this will use "OpenWrt" as
> done before.
>
> Using a uci-defaults script for this is necessary as mac80211.sh is
> executed before /etc/board.json is created, so label MAC addresses
> set in 02_network would not be available there.

Unfortunately since we detect wifi async these days this is quite
racy, and there is no guarantee /etc/config/wireless is fully
populated by the time the uci defaults are run. E.g. mwl8k takes quite
a while since it uses different firmwares for STA and AP modes, and it
needs to re-initialize to switch between them (triggered by by
mac80211.sh trying to detect the supporte features).


Regards
Jonas

>
> Suggested-by: Rosy Song <rosysong@rosinson.com>
> Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>
> ---
>
> This effectively uses a workaround to prevent SSID from being reset
> after upgrade (match SSID vs. "OpenWrt"). If there is a nicer option,
> please propose it.
>
> Another option for this would be to explicitly mark the wireless uci
> config as 'default setup' by a to-be-introduced option, which is
> to be removed in a late uci-defaults script. This could then be
> exploited for several other objectives, e.g. further config-dependent
> WiFi setup tasks.
> ---
>  .../etc/uci-defaults/15_wifi-ssid-mac-address | 22 +++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
>
> diff --git a/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
> new file mode 100644
> index 0000000000..aeb46e39c0
> --- /dev/null
> +++ b/package/base-files/files/etc/uci-defaults/15_wifi-ssid-mac-address
> @@ -0,0 +1,22 @@
> +. /lib/functions.sh
> +. /lib/functions/system.sh
> +
> +set_wifi_ssid() {
> +       local iface="$1"
> +
> +       [ "$(uci get "wireless.${iface}.ssid")" = "OpenWrt" ] && \
> +               uci set "wireless.${iface}.ssid=$ssid"
> +}
> +
> +label_macaddr=$(get_mac_label)
> +
> +[ -n "$label_macaddr" ] || exit 0
> +
> +ssid="OpenWrt-$(macaddr_geteui $label_macaddr)"
> +
> +config_load wireless
> +config_foreach set_wifi_ssid wifi-iface
> +
> +uci commit wireless
> +
> +exit 0
> --
> 2.20.1
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
