Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04851D1020
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 12:46:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCxC808KVlD7otcB3YLkm/9lfnAJxFWF5L6FBBJMIgc=; b=OAa0x6c7fZsnQZ
	9Z9Jec7cgZtDcUI9bhbP3GKmVsjeUz5tDxExQBcXVRY/Dddubq1i/VVOmdFik5L2+fzyOqSJt0QRD
	dmeiFH9JwTKQBrujETjwmkaYagtU8qKqtRQZhRhcKCUVN7jrrYee/nmXXwOQ1IjfosM8qws0I5UCU
	o0ZKp4SiIOxY+we/MXoQlBt/1bpDO0pjzpAptpQ1N1btvSse6BUlZVwOMatc89mtw+/u477fWIFGP
	MLUUT95eltkMJAGD8X4bSFudYU+GicuIpZ3k/b0+ko/NagbpGNGpCgCHT/zjxy8yIg/w/5RsgyA7Y
	+b8gBKg0S0RJ4/5MbQSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYouG-0003Fj-Iq; Wed, 13 May 2020 10:46:32 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYou7-0003CX-AV
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 10:46:24 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jYotv-00065J-JH; Wed, 13 May 2020 12:46:13 +0200
Date: Wed, 13 May 2020 11:46:03 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jouni Malinen <j@w1.fi>
Message-ID: <20200513104603.GB20764@makrotopia.org>
References: <20200512214612.GF1636@makrotopia.org>
 <20200513083817.GA5236@w1.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513083817.GA5236@w1.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_034623_360314_2DE09E8F 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] hostap commit 6c9543fcb breaks MESH-SAE with
 wolfssl
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org,
 Antonio Quartulli <a@unstable.cc>, ringelrobbe <ringelrobbe@riseup.net>,
 Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Jouni,

thanks for the quick reply!

On Wed, May 13, 2020 at 11:38:17AM +0300, Jouni Malinen wrote:
> On Tue, May 12, 2020 at 10:46:12PM +0100, Daniel Golle wrote:
> > After hours of bisecting which change between hostapd_2_8 and
> > hostapd_2_9 broke SAE in mesh mode with WolfSSL we got a result:
> > 
> > > commit 6c9543fcb7962e26c2a91c43089abe171d073b44
> > > Author: Jouni Malinen <jouni@codeaurora.org>
> > > Date:   Thu Apr 25 20:18:27 2019 +0300
> > > 
> > > Share common SAE and EAP-pwd functionality: random qr/qnr creation
> > > 
> > > Use a shared helper function to create random qr/qnr values.
> > > 
> > > Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
> > 
> > While when building against OpenSSL, things keep working also after
> > the above commit, when building against WolfSSL, the node hangs in
> > LISTEN state for a long time and then ends up BLOCKED.
> > I've tried with WolfSSL 3.14.4 and WolfSSL 4.3.0-stable-1 with
> > identical results.
> 
> This works fine in my tests with 4.3.0. All the mac80211_hwsim test
> cases for mesh pass with the current wpa_supplicant snapshot built with
> WolfSSL 4.3.0.

Odd, but could be endian or sizeof(int) related differences. I assume
you are testing on x86_64 glibc while I'm testing this on MIPS24kc
(big endian!) with musl libc running on QCA SoCs.

> 
> > Going back to commit 2b84ca4dd
> > ("Share common SAE and EAP-pwd functionality: suitable groups") makes
> > things working again also with WolfSSL.
> > 
> > On first sight there seems nothing wrong with that commit to me, but
> > apparently it does break things :(
> > 
> > Any ideas helping to fix this would be highly appreciated!
> 
> Can you please share some more details on how you are testing this and
> ideally, debug logs from two devices for a case that fails with WolfSSL,
> but works with OpenSSL? I'd like to also get a confirmation that you are
> seeing the issue with the current snapshot of the master branch in
> hostap.git since that is the version I would be using for any debugging
> of the issue.

I've tried plain wpa_supplicant as well as with OpenWrt's patches, all
build against WolfSSL 4.3.0-stable.


using git revision 2b84ca4d :

root@OpenWrt:~# wpa_supplicant -ddd -P /var/run/wpa_supplicant-wlan1-mesh.pid -D nl80211 -i wlan1-mesh -c /var/run/wpa_supplicant-wlan1-mesh.conf
Successfully initialized wpa_supplicant
Using interface wlan1-mesh with hwaddr 64:70:02:xx:xx:xx and ssid ""
wlan1-mesh: interface state UNINITIALIZED->ENABLED
wlan1-mesh: AP-ENABLED 
wlan1-mesh: joining mesh LiMe
wlan1-mesh: CTRL-EVENT-CONNECTED - Connection to 00:00:00:00:00:00 completed [id=0 id_str=]
wlan1-mesh: MESH-GROUP-STARTED ssid="LiMe" id=0
wlan1-mesh: new peer notification for 04:18:d6:xx:xx:xx
wlan1-mesh: mesh plink with 04:18:d6:xx:xx:xx established
wlan1-mesh: MESH-PEER-CONNECTED 04:18:d6:xx:xx:xx


using git revision 6c9543fc :

root@OpenWrt:~# wpa_supplicant -ddd -P /var/run/wpa_supplicant-wlan1-mesh.pid -D nl80211 -i wlan1-mesh -c /var/run/wpa_supplicant-wlan1-mesh.conf
Successfully initialized wpa_supplicant
Using interface wlan1-mesh with hwaddr 64:70:02:xx:xx:xx and ssid ""
wlan1-mesh: interface state UNINITIALIZED->ENABLED
wlan1-mesh: AP-ENABLED 
wlan1-mesh: joining mesh LiMe
wlan1-mesh: CTRL-EVENT-CONNECTED - Connection to 00:00:00:00:00:00 completed [id=0 id_str=]
wlan1-mesh: MESH-GROUP-STARTED ssid="LiMe" id=0
wlan1-mesh: new peer notification for 04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-BLOCKED addr=04:18:d6:xx:xx:xx duration=300
...(after a minute or two)


using git revision 0f58c88f :

root@OpenWrt:~# wpa_supplicant -ddd -P /var/run/wpa_supplicant-wlan1-mesh.pid -D nl80211 -i wlan1-mesh -c /var/run/wpa_supplicant-wlan1-mesh.conf
Successfully initialized wpa_supplicant
wlan1-mesh: interface state UNINITIALIZED->ENABLED
wlan1-mesh: AP-ENABLED 
wlan1-mesh: joining mesh LiMe
wlan1-mesh: CTRL-EVENT-CONNECTED - Connection to 00:00:00:00:00:00 completed [id=0 id_str=]
wlan1-mesh: MESH-GROUP-STARTED ssid="LiMe" id=0
wlan1-mesh: new peer notification for 04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: MESH-SAE-AUTH-FAILURE addr=04:18:d6:xx:xx:xx
wlan1-mesh: new peer notification for 04:18:d6:xx:xx:xx
... (takes VERY long for each line)


using git revision 0f58c88f, but build against OpenSSL 1.1.1g:

root@OpenWrt:~# wpa_supplicant -ddd -P /var/run/wpa_supplicant-wlan1-mesh.pid -D nl80211 -i wlan1-mesh -c /var/run/wpa_supplicant-wlan1-mesh.conf
Successfully initialized wpa_supplicant
wlan1-mesh: interface state UNINITIALIZED->ENABLED
wlan1-mesh: AP-ENABLED 
wlan1-mesh: joining mesh LiMe
wlan1-mesh: CTRL-EVENT-CONNECTED - Connection to 00:00:00:00:00:00 completed [id=0 id_str=]
wlan1-mesh: MESH-GROUP-STARTED ssid="LiMe" id=0
wlan1-mesh: new peer notification for 04:18:d6:xx:xx:xx
Mesh RSN: frame verification failed!
wlan1-mesh: mesh plink with 04:18:d6:xx:xx:xx established
wlan1-mesh: MESH-PEER-CONNECTED 04:18:d6:xx:xx:xx


configuration is identical for all those tests:

network={
        ssid="LiMe"
        key_mgmt=SAE
        mode=5
        fixed_freq=1
        frequency=5765
        ht40=1
        max_oper_chwidth=0
        sae_password="XXXXXXXX"
        beacon_int=100
        mcast_rate=6
}


The build environment is currently on an otherwise unused system wired
up to the two QCA devices for testing. We could arrange remote access
remote access via SSH or you can tell me to build/test whatever you'd
like me to and I'll report back.
If you'd like to reproduce this locally or even include in your CI,
I guess that building Linux and wpa_supplicant for MIPS Malta (BE) and
running that in qemu-system-mips will show similar results as my
testing on real hardware.


Best regards


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
