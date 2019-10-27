Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7AC8E62AD
	for <lists+openwrt-devel@lfdr.de>; Sun, 27 Oct 2019 14:36:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Np4mlLoGoEEGvehr1xczNWw1zKTIIwQAZo5/mGefQb8=; b=Uy6tPLpsEpeKLLdsPOuLTXL6I
	BSnfot+p9QkrytvWuFhGcUEPdODBT6NpjDJymUSji7eP/Ywv1YB5yHF4DOPpervGqIfekoF3BIYXt
	QnaA3j82h5G7MCnZeiNPWTshQGty9ezh/TIF8wPFKDa4B8UE09Xtu82Wo0DoF8NjTf8KvaHMR44RP
	cUhHPD9RSB0ra2LvIuXq2CIC4eJs25WOxQwdyM9j+/njYthK2xJvauUVbNDlOzc0dG9BEo58VjKJA
	+vy8a6igsPVoE3ZVnJAbDORE/r3/itLLGo9tc6JbirQCm/YkZV3BHXDQf/Qk7A9TxW7hwZDxGoLwK
	M66ZYS2mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOii8-0003AD-0B; Sun, 27 Oct 2019 13:36:00 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOihz-00039X-GC
 for openwrt-devel@lists.openwrt.org; Sun, 27 Oct 2019 13:35:53 +0000
Received: from p5dcfb592.dip0.t-ipconnect.de ([93.207.181.146]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iOihw-0005oT-US; Sun, 27 Oct 2019 14:35:49 +0100
To: greearb@candelatech.com, openwrt-devel@lists.openwrt.org
References: <20181217164802.20108-1-greearb@candelatech.com>
From: John Crispin <john@phrozen.org>
Message-ID: <73cd647e-2ac5-f397-2e9c-2fd0686f40ab@phrozen.org>
Date: Sun, 27 Oct 2019 14:35:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20181217164802.20108-1-greearb@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_063551_701693_E2B59090 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] hotplug: Allow renaming wireless phy
 devices.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 17/12/2018 17:48, greearb@candelatech.com wrote:
> From: Ben Greear <greearb@candelatech.com>
> 
> uci set wireless.@wifi-device[0].phyname=wiphy0
> 
> Then reboot and/or re-plug that device, and this will
> name the phy wiphy0 instead of phy0, phy1, etc.
> 
> This can help keep phy names consistent through driver reloads
> which may make the system easier to configure properly or to
> make different systems have the same naming (where wiphy0 is always
> the 2.4Ghz radio, for instance).
> 
> Signed-off-by: Ben Greear <greearb@candelatech.com>
> ---
>   .../kernel/mac80211/files/mac80211.hotplug    | 32 +++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/package/kernel/mac80211/files/mac80211.hotplug b/package/kernel/mac80211/files/mac80211.hotplug
> index b865552661..a394e3195e 100644
> --- a/package/kernel/mac80211/files/mac80211.hotplug
> +++ b/package/kernel/mac80211/files/mac80211.hotplug
> @@ -3,3 +3,35 @@
>   [ "${ACTION}" = "add" ] && {
>   	/sbin/wifi config
>   }
> +
> +
> +OPATH=${DEVPATH##/devices/platform/}
> +OPATH=${OPATH%%/ieee*}
> +
> +# For USB, OPATH looks like this at this point in this script:
> +# soc/soc:usb30@0/11000000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1:1.0
> +# But, the uci path has a platform/ prefix on that:
> +# platform/soc/soc:usb30@0/11000000.dwc3/xhci-hcd.0.auto/usb1/1-1/1-1:1.0
> +OPATH_USB="platform/$OPATH";
> +
> +# 10 radios is enough for anyone!
> +#echo "fix-wifi-mac, OPATH: $OPATH" >> /tmp/foo.txt
Hi Ben,
can you please drop all the debug code from the patch and resend
	John

> +for i in `seq 0 9`;
> +  do
> +  BUS=`uci get wireless.@wifi-device[$i].path`
> +  #echo "fix-wifi-mac, BUS[$i]: $BUS" >> /tmp/foo.txt
> +  if [ "$BUS " == "$OPATH " ] || [ "$BUS " == "$OPATH_USB " ]
> +      then
> +      PHYNAME=${DEVPATH##*ieee80211/}
> +      NPHYNAME=`uci get wireless.@wifi-device[$i].phyname`
> +      #echo "fix-wifi-mac, PHYNAME[$i]: $PHYNAME  NPHYNAME: $NPHYNAME" >> /tmp/foo.txt;
> +      if [ "$NPHYNAME " != " " ]
> +          then
> +          if [ "$PHYNAME " != "$NPHYNAME " ]
> +              then
> +	      #echo "fix-wifi-mac, renaming..." >> /tmp/foo.txt;
> +              iw $PHYNAME set name $NPHYNAME
> +          fi
> +      fi
> +  fi
> +done
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
