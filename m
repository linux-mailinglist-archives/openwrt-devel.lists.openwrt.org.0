Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24DCB295
	for <lists+openwrt-devel@lfdr.de>; Sat, 27 Apr 2019 06:11:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:Date:To:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M3T8sOrI67IKMXSJsIuWl6nAmyd7XIV1LnnU6CrEML0=; b=iU+
	f1r0ilEiphrwzWxd+KSbCw1TucIIN21sPADvanSkCOW8UdIMe57l1U8o6A9tQM82plLRxBCn5aTvn
	Gz1x5uY5DASf5PdbLd/apSGbY771gFiuX4SVWkcWhKUxLhHZfjednH03HeJqICjd1cBXK9nw782xa
	AAbcvHvS4OUOsHNLUh2XNMnm3JOWNwL9IBdBPKJdv04i+A1gDWOs/miL5nkI6wNeBOVBjk5udYqR+
	uw3WB7N2YQUmA8S+mixYa1VdnJg+2/auugPsYz7VJ5HsPAGYJ/MNsC7TJY68TECOy5Pwh8CTVtM4n
	PyvOzLvEntzT2TzR96uNeFd8vazPSng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKEgW-0003aV-Fp; Sat, 27 Apr 2019 04:11:32 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKEgI-0003Zi-Sw
 for openwrt-devel@lists.openwrt.org; Sat, 27 Apr 2019 04:11:21 +0000
Received: from bilbo.ozlabs.org (localhost [IPv6:::1])
 by ozlabs.org (Postfix) with ESMTP id 44rct4470kz9sSp
 for <openwrt-devel@lists.openwrt.org>; Sat, 27 Apr 2019 14:11:08 +1000 (AEST)
Authentication-Results: ozlabs.org; dmarc=none (p=none dis=none)
 header.from=patchwork.ozlabs.org
MIME-Version: 1.0
From: Patchwork <patchwork@patchwork.ozlabs.org>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 27 Apr 2019 04:11:08 -0000
Message-ID: <20190427041108.23711.96679@bilbo.ozlabs.org>
Precedence: bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_211119_400138_EE8DB3A5 
X-CRM114-Status: UNSURE (   4.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [openwrt] Patch notification: 79 patches updated
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

The following patches (submitted by you) have been updated in Patchwork:

 * openwrt: [OpenWrt-Devel] download.mk, image.mk: add --mode=a-s option to tar
     - http://patchwork.ozlabs.org/patch/1068464/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,1/2] openssl: patch to fix devcrypto sessions leak
     - http://patchwork.ozlabs.org/patch/1043245/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] kernel: nf-nathelper depends on ipt-raw
     - http://patchwork.ozlabs.org/patch/967392/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,v2] openssl: backport devcrypto changes from master
     - http://patchwork.ozlabs.org/patch/1046426/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,v2,1/1] libpcap: patch to add limits.h to pcap-usb-linux.c
     - http://patchwork.ozlabs.org/patch/952133/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2] kernel: nf-nathelper depends on ipt-raw
     - http://patchwork.ozlabs.org/patch/967393/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] brcm63xx: initial support for Sky SR102 router
     - http://patchwork.ozlabs.org/patch/944013/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] openssl: add Eneas U de Queiroz as maintainer
     - http://patchwork.ozlabs.org/patch/1088859/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] cryptodev-linux: move from packages feed
     - http://patchwork.ozlabs.org/patch/995670/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] ar71xx: add support for UniFi-AC-Mesh-Pro
     - http://patchwork.ozlabs.org/patch/994769/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,1/2] iproute2: RFC update cake support
     - http://patchwork.ozlabs.org/patch/918489/
     - for: OpenWrt development
    was: New
    now: RFC

 * openwrt: [OpenWrt-Devel,2/2] kmod-sched-cake: RFC latest cake
     - http://patchwork.ozlabs.org/patch/918490/
     - for: OpenWrt development
    was: New
    now: RFC

 * openwrt: [OpenWrt-Devel,2/4] libevent2: Make it build using OpenSSL 1.1.0
     - http://patchwork.ozlabs.org/patch/918219/
     - for: OpenWrt development
    was: New
    now: Not Applicable

 * openwrt: [OpenWrt-Devel,1/4] openssl: Upgrade to 1.1.0h
     - http://patchwork.ozlabs.org/patch/918220/
     - for: OpenWrt development
    was: New
    now: Not Applicable

 * openwrt: [OpenWrt-Devel] Honour NO_COLOR in include/scan.mk
     - http://patchwork.ozlabs.org/patch/1033566/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,1/1] openssl, wolfssl: match mbedTLS ciphersuite list
     - http://patchwork.ozlabs.org/patch/950307/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v3] openssl: backport devcrypto changes from master
     - http://patchwork.ozlabs.org/patch/1047918/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,3/4] adb: added patch for openssl 1.1.0 compatibility
     - http://patchwork.ozlabs.org/patch/918221/
     - for: OpenWrt development
    was: New
    now: Not Applicable

 * openwrt: [OpenWrt-Devel] openssl: fix devcrypto engine md blocksize
     - http://patchwork.ozlabs.org/patch/1046380/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,v4] openssl: backport devcrypto changes from master
     - http://patchwork.ozlabs.org/patch/1049156/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,4/4] ustream-ssl: openssl-1.1 compatibility
     - http://patchwork.ozlabs.org/patch/918222/
     - for: OpenWrt development
    was: New
    now: Not Applicable

 * openwrt: [OpenWrt-Devel] openssl: revert disallowing parallel build
     - http://patchwork.ozlabs.org/patch/1054880/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] ath79: add support for GL.iNet GL-AR750S
     - http://patchwork.ozlabs.org/patch/1019411/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel,v2,ubox] kmodloader: increase module name length
     - http://patchwork.ozlabs.org/patch/1046591/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] wireguard: bump to 0.0.20180620
     - http://patchwork.ozlabs.org/patch/932376/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2] rtl8812au: Add out-of-tree driver.
     - http://patchwork.ozlabs.org/patch/1013206/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2,1/2] lantiq: atm: fix ifx_atm driver integration
     - http://patchwork.ozlabs.org/patch/930353/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,v2] kernel: bump 4.14 to 4.14.51
     - http://patchwork.ozlabs.org/patch/932897/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] libpcap: patch to add limits.h to pcap-usb-linux.c
     - http://patchwork.ozlabs.org/patch/951550/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel,2/2] ath79: fix qca955x dual pci resource allocation
     - http://patchwork.ozlabs.org/patch/1032463/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] nettle: bump to 3.4
     - http://patchwork.ozlabs.org/patch/922626/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] ustream-ssl: mbedtls: use chacha-poly ciphersuites
     - http://patchwork.ozlabs.org/patch/951211/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel,v2] openssl: disable digests by default, misc fixes
     - http://patchwork.ozlabs.org/patch/1055395/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] ath79: add support for GL.iNet GL-AR750S
     - http://patchwork.ozlabs.org/patch/1019450/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] openssl: disable digests by default, misc fixes
     - http://patchwork.ozlabs.org/patch/1054879/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] libevent2: update to version 2.1.8
     - http://patchwork.ozlabs.org/patch/916677/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel,v3,3/3] ustream-ssl: Revised security on mbedtls
     - http://patchwork.ozlabs.org/patch/930308/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] openssl: Upgrade to 1.1.0h
     - http://patchwork.ozlabs.org/patch/916676/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel] ath79: add support for GL.iNet GL-AR750S
     - http://patchwork.ozlabs.org/patch/1019420/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel,v2.1,4/4] ustream-ssl: openssl-1.1 compatibility
     - http://patchwork.ozlabs.org/patch/923349/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,v2,1/4] openssl: Upgrade to 1.1.0h
     - http://patchwork.ozlabs.org/patch/923115/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] openssl: bump to release 1.1.1b
     - http://patchwork.ozlabs.org/patch/1049147/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] kernel: bump to 4.9.105
     - http://patchwork.ozlabs.org/patch/923566/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2,3/4] adb: added patch for openssl 1.1.0 compatibility
     - http://patchwork.ozlabs.org/patch/923106/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] openssl: fix OPENSSL_config bug affecting wget
     - http://patchwork.ozlabs.org/patch/1088771/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2,2/4] libevent2: Make it build using OpenSSL 1.1.0
     - http://patchwork.ozlabs.org/patch/923105/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,v2,4/4] ustream-ssl: openssl-1.1 compatibility
     - http://patchwork.ozlabs.org/patch/923108/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,1/2] ath79: fix qca955x pcie0 memory size
     - http://patchwork.ozlabs.org/patch/1032465/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] kernel: bump 4.14 to 4.14.51
     - http://patchwork.ozlabs.org/patch/932599/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] ramips: mir3g dts define usb port Vcc volt regulator GPIO
     - http://patchwork.ozlabs.org/patch/926435/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] kernel: nf-nathelper-extra depends on ipt-raw
     - http://patchwork.ozlabs.org/patch/967385/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] kernel: bump 4.9 to 4.9.107
     - http://patchwork.ozlabs.org/patch/927114/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2] openssl: change defaults: ENGINE:on, NPN:off, misc
     - http://patchwork.ozlabs.org/patch/1086624/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] openssl: change defaults: ENGINE:on, NPN:off, misc
     - http://patchwork.ozlabs.org/patch/1086267/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] ramips: mir3g: reduce usb power flapping at boot
     - http://patchwork.ozlabs.org/patch/926983/
     - for: OpenWrt development
    was: New
    now: Rejected

 * openwrt: [OpenWrt-Devel,v3,2/3] ustream-ssl: Revised security on openssl/wolfssl
     - http://patchwork.ozlabs.org/patch/930306/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,1/2] lantiq: atm: fix ifx_atm driver integration
     - http://patchwork.ozlabs.org/patch/930314/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] procd: remove /dev filter on uevents
     - http://patchwork.ozlabs.org/patch/1009301/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel,v3,1/3] ustream-ssl: add openssl-1.1.0 compatibility
     - http://patchwork.ozlabs.org/patch/930309/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,2/2] kernel: atm: pppoatm fix vc-mux connection failures
     - http://patchwork.ozlabs.org/patch/930315/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] odhcpd: allow specifying lease trigger mode
     - http://patchwork.ozlabs.org/patch/935092/
     - for: OpenWrt development
    was: New
    now: Rejected

 * openwrt: [OpenWrt-Devel,v2,2/2] kernel: atm: pppoatm fix vc-mux connection failures
     - http://patchwork.ozlabs.org/patch/930354/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,1/1] ustream-ssl: update to latest git HEAD
     - http://patchwork.ozlabs.org/patch/954161/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] openssl: build kmods only if engines are selected
     - http://patchwork.ozlabs.org/patch/1091056/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] hotplug: Allow renaming phy devices.
     - http://patchwork.ozlabs.org/patch/1013207/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel] Change mwlwifi driver version to 10.3.8.0-20181022.
     - http://patchwork.ozlabs.org/patch/987524/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel] V 2 Re: Change mwlwifi driver version to 10.3.8.0-20181022.
     - http://patchwork.ozlabs.org/patch/987769/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] ath79: align GL-AR750S boardname to other GL.iNet devices
     - http://patchwork.ozlabs.org/patch/1019756/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,v2] cryptodev-linux: move from packages feed
     - http://patchwork.ozlabs.org/patch/1002890/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] lantiq: atm: fix ifx_atm driver integration
     - http://patchwork.ozlabs.org/patch/930754/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] kernel: atm: pppoatm fix vc-mux connection failures
     - http://patchwork.ozlabs.org/patch/930753/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,1/1] omcproxy: fix compilation on little-endian CPUs
     - http://patchwork.ozlabs.org/patch/1013677/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel,RFC] ltq_atm: burn ifx_atm_alloc_tx with fire
     - http://patchwork.ozlabs.org/patch/931120/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] wolfssl: reorganized build options
     - http://patchwork.ozlabs.org/patch/930625/
     - for: OpenWrt development
    was: New
    now: Not Applicable

 * openwrt: [OpenWrt-Devel,2/2] openssl: backport devcrypto changes from master
     - http://patchwork.ozlabs.org/patch/1043246/
     - for: OpenWrt development
    was: New
    now: Superseded

 * openwrt: [OpenWrt-Devel,1/1] libevent2: Don't build tests and samples
     - http://patchwork.ozlabs.org/patch/950854/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] libevent2: Make it build using OpenSSL 1.1.0
     - http://patchwork.ozlabs.org/patch/917627/
     - for: OpenWrt development
    was: New
    now: Changes Requested

 * openwrt: [OpenWrt-Devel] Honour NO_COLOR in include/scan.mk
     - http://patchwork.ozlabs.org/patch/1028835/
     - for: OpenWrt development
    was: New
    now: Accepted

 * openwrt: [OpenWrt-Devel] adb: added patch for openssl 1.1.0 compatibility
     - http://patchwork.ozlabs.org/patch/917564/
     - for: OpenWrt development
    was: New
    now: Changes Requested

This email is a notification only - you do not need to respond.

Happy patchworking.

--

This is an automated mail sent by the Patchwork system at
patchwork.ozlabs.org. To stop receiving these notifications, edit
your mail settings at:
  http://patchwork.ozlabs.org/mail/

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
