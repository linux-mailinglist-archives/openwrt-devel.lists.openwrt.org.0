Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B6B88A74
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 11:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:
	Message-ID:To:From:Date:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BWDXQJlRBTtgd8PfUBbtAlaBXN7mhBejY2aoeNrn5B4=; b=uxz
	aXPQODe/J0jvmcrYCEG2cauuqC19DO41SOCciO4HK7oHvNFDWrkm1rlfRiSBOJJyyIPRv72m6HWRE
	Jn1vLrY7664qa4TQnPtWO52nuAllqXABcVX61Tv8C5SPN6DBCcVym44+HCIydTKN7Ti1zTehphQPj
	731CCCtzRFZnNzwuAi7o878g1/EeiTPdwgTdwIB9WFy7otBBenEsj6iB/fxCopL4bgT+EtLSolC4u
	MS8EwCFbzyHqpCw9L3Qunj5Q5M3eLIJHZelAA2t9r+SjDm06UGy0kHixjBLUu0Vt2Q8vQdu3lo8AI
	jAwPUuTrGTzcxOABBWazx6JoCxQTjmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwO8r-0007l5-9D; Sat, 10 Aug 2019 09:58:29 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwO8f-0007kO-Ie
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 09:58:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id DFC3645B2
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 11:58:11 +0200 (CEST)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id 02ffe0b4
 for <openwrt-devel@lists.openwrt.org>;
 Sat, 10 Aug 2019 11:58:04 +0200 (CEST)
Date: Sat, 10 Aug 2019 11:58:09 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20190810095809.GA745@meh.true.cz>
MIME-Version: 1.0
Content-Disposition: inline
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_025817_769500_C5C741F7 
X-CRM114-Status: UNSURE (   4.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Review and cleanup of base packages
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

one of the topics discussed during recent Hamburg meeting was "Review base
packages"[1], where we simply talked about:

 * lack of formal definition for a base package
 * transfer of base packages which don't fit formal definition into feeds

So, how can we define which package should be included in the base/master
tree? (Any idea where to put this on the wiki?)

 * package is needed by device in order to
   - build the image and flashing tools
   - boot device into usable state
 * package is convenient for development (gdb, perf, strace, valgrind etc.)
   - couldn't one just symlink/install those packages from feeds?
 * it's convenient for testing (ct-bugcheck, fbtest, spidev_test, iperf3 etc.)
   - couldn't one just symlink/install those packages from feeds?
 * package is needed for automatic testing
   - couldn't one just symlink/install those packages from feeds?
 * it's not possible to build the package and/or tooling out of the tree

For the initial discussion, I've simply created a list of packages which are
not used by any target, so probably possible candidates for transfer into the
feeds:

 boot/kexec-tools
 devel/gdb
 devel/perf
 devel/strace
 devel/trace-cmd
 devel/valgrind
 firmware/am33x-cm3
 firmware/amd64-microcode
 kernel/avila-wdt
 kernel/gpio-nct5104d
 kernel/leds-apu2/src
 kernel/rtc-rv5c386a
 kernel/rtl8812au-ct
 kernel/trelay
 kernel/w1-gpio-custom
 libs/libbsd                       (lldpd)
 libs/libconfig
 libs/libevent2                    (lldpd)
 libs/libnetfilter-cthelper
 libs/libnetfilter-cttimeout
 libs/libnetfilter-log
 libs/libnetfilter-queue
 libs/libroxml
 libs/libusb-compat
 libs/nghttp2                      (curl)
 libs/popt
 network/config/ltq-vdsl-app
 network/config/qos-scripts
 network/config/vti
 network/config/vxlan
 network/config/xfrm
 network/ipv6/464xlat
 network/ipv6/6in4
 network/ipv6/6rd
 network/ipv6/6to4
 network/ipv6/ds-lite
 network/ipv6/map
 network/ipv6/thc-ipv6
 network/services/igmpproxy
 network/services/ipset-dns
 network/services/lldpd
 network/services/omcproxy
 network/services/openvpn-easy-rsa
 network/services/openvpn
 network/services/relayd
 network/services/samba36
 network/services/umdns
 network/services/wireguard
 network/utils/curl
 network/utils/dante
 network/utils/iftop
 network/utils/iperf3
 network/utils/iperf
 network/utils/iproute2
 network/utils/ipset
 network/utils/iputils
 network/utils/iwcap
 network/utils/owipcalc
 network/utils/tcpdump
 network/utils/umbim
 network/utils/wpan-tools
 system/rpcd
 system/zram-swap
 utils/ct-bugcheck
 utils/fbtest
 utils/fritz-tools
 utils/fuse
 utils/lua5.3
 utils/px5g
 utils/spidev_test
 utils/ugps
 utils/usbmode
 utils/usbreset
 utils/usbutils
 utils/xfsprogs

1. https://openwrt.org/meetings/hamburg2019/start#review_base_packages

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
