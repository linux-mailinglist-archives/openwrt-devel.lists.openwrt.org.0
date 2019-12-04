Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A89221136E4
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Dec 2019 22:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHdvEovWSKSFoh4ZbbXUUhmaqpixmhIl2Ubg7VRns1w=; b=VifAmYNbuHWweY
	41ghFGRXm6CUkVJpmeNHJYDdOrokZU0+haN3Yhhjai+kGQW0AyZFDgAlgKbGTlPQSjaAAiXs2Mdfx
	jL9I4KqQ7XvqWX5ahudgVGbqhv3BOUwPs+AJy3BlLmSdb6FgrcDulSHJtsLmXoMErRiMT3s/bbxpn
	9TzAlmPvpjznFuO4Zdcq+5QPdCOuwfbulrlpDbkFMBD8K5pbSDNpN7aFqqHxHA1OUucWKxmZj5oRs
	4pU8eTkWhXnjoWtxeZMqfSDefh8VtrTxAN1m/iY+jE9kEGtTHlYjVfqYlg21FR8oqkmgfnVWPxzkZ
	99VMUcvmzigv/o9dCi1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbrf-0002hW-AH; Wed, 04 Dec 2019 21:07:15 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbrV-0002gu-BD
 for openwrt-devel@lists.openwrt.org; Wed, 04 Dec 2019 21:07:07 +0000
Received: from acer ([188.193.231.72]) by mrelayeu.kundenserver.de (mreue010
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1N7zW7-1hiSQQ2nsh-0151vh; Wed, 04
 Dec 2019 22:07:02 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Florian Eckert'" <fe@dev.tdt.de>
References: <20191204130450.14177-1-fe@dev.tdt.de>
In-Reply-To: <20191204130450.14177-1-fe@dev.tdt.de>
Date: Wed, 4 Dec 2019 22:07:00 +0100
Message-ID: <013b01d5aae6$c6027ef0$52077cd0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQJ2cCMdpTwW3MFssuqflcAgNrWI/aZo5yeQ
X-Provags-ID: V03:K1:ot78k0w7iIhw+beYuaHU/Xns74EGWVqslNDw+I3rl+tfK19ucMJ
 7RtFlkwEo14+B7jUCaFGUJVJ+/AXmhAKh2GiQbfd5wqOvUZTQKloEoG231ogaROuXcN/pH2
 1IyAw2OzerZaWwalvOiMe4BSXEBNb+j/8EE4o7lR/UYUbjQ2N6IF8ArXTXhKKXoUeWqoNfI
 sYxPG4pF74WuJBF2JTwyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kWKJpbZqOb8=:QhEFQmKunMQSKClWI49SEv
 fOGFMBVVRhHMlCoB7adgTi+TZE8vvZNIVvJXw702zjK+rAzgJQnN62wtmusjyIUtjK9DTHOIS
 iZsIKqF8eTUbtmOi3tIOJJxnljM9IloYai4Xy7g6OMWSmI16ALkPHzqux2Eb78QUqJei0U7G7
 ziMdQ1sPTkgpvFBWxabc+hhgK8CM2DuWetR49dtOIdYT5lIVedW2EZcR8yO7ENSMmiu4WNP2P
 n3WoDG7hwVbNEUjuuYwBy9mxsTX4vFZAxI74tFToe3U2E+ydidM3pRllM4X+/x8UbbN3aMH5w
 HdAAG7YFrcNZD0ARVPCojIub55Odzh6rOYydwHFhtBULBtbIueC6BJeTT4Uda6tpL4cKo6Cot
 qbAveliVhbrSpCtoHFcjD7UoGTx+LOkCfvLzLANTTUPkYHIQyZbXrMUo7hk1LM29x4Z8R7AOb
 W4JYfhiPdqs7Brzh1qgaXSKvKTFs81Qrh/lv1x95RJzEkxGOxUyDJ6Yk6IUncgMiuv6zdPztQ
 JrW6GjJsNxcivjlVhc/tczo5+p7OQnVGV7xV3EkV0CPI9nW0XhyriSx89Da5IAkUUMilvtEUa
 afEWwVNYp3e5fgj1VA0PZIn1prw9vS+Y/KHlUfQhgt/CpVTe5C/KpDCJGdHV+vVPY0ZSgVqpB
 Vejn7ZTelco9kaDUNWtAom2tNN8o8quq/tNgsV7P7ZibS5gsp48pQqcd6k9QLWVQJqlwIRaMW
 vFVPwjz5K48+VnhWcePMbSeLLC9cYFqtXR2DBTQ910Tq3y1gRPMCKTW4uojKITO/dNQSZr5zJ
 PSa8J90xDQSo3frWNC21Uo6GXqMiBipISHuOehKshr6kI2Fq4WiOudIC+DhDLqh6nnSDjT9OA
 ylQuOaQm4leotdHsrSuCaluIVVku78qlvEpEmE2WY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_130705_681829_3DD0DDF9 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] wireguard: fix interface remove on
 lonely peers
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

commit message should be redacted.

Best

Adrian

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Florian Eckert
> Sent: Mittwoch, 4. Dezember 2019 14:05
> To: Eckert.Florian@googlemail.com; Jason@zx2c4.com; ldir@darbyshire-
> bryant.me.uk; daniel.engberg.lists@pyret.net
> Cc: openwrt-devel@lists.openwrt.org; Florian Eckert <fe@dev.tdt.de>
> Subject: [OpenWrt-Devel] [PATCH] wireguard: fix interface remove on lonely
> peers
> 
> Redmine-patch-id: 4230
> If we delete the main wireguard interface, then the related are not
delete.
> They remain in the network configuration.
> 
> With this commit wo get called on a network config change, and check if
each
> wireguard peer has an interface. If this is not the case delete alle peers
that
> do not have a related wireguard interface.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
> ---
> This was discussed on the irc with Kevin Darbyshire-Bryant alias ldir on
the irc
> that this is a bug and should be get fixed.
> 
>  package/network/services/wireguard/Makefile   |  2 ++
>  .../services/wireguard/files/wireguard.init   | 31 +++++++++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644
> package/network/services/wireguard/files/wireguard.init
> 
> diff --git a/package/network/services/wireguard/Makefile
> b/package/network/services/wireguard/Makefile
> index ea34b7550b..d78fcfface 100644
> --- a/package/network/services/wireguard/Makefile
> +++ b/package/network/services/wireguard/Makefile
> @@ -93,6 +93,8 @@ define Package/wireguard-tools/install
>  	$(INSTALL_BIN) ./files/wireguard_watchdog $(1)/usr/bin/
>  	$(INSTALL_DIR) $(1)/lib/netifd/proto/
>  	$(INSTALL_BIN) ./files/wireguard.sh $(1)/lib/netifd/proto/
> +	$(INSTALL_DIR) $(1)/etc/init.d/
> +	$(INSTALL_BIN) ./files/wireguard.init $(1)/etc/init.d/wireguard
>  endef
> 
>  define KernelPackage/wireguard
> diff --git a/package/network/services/wireguard/files/wireguard.init
> b/package/network/services/wireguard/files/wireguard.init
> new file mode 100644
> index 0000000000..781d0839bc
> --- /dev/null
> +++ b/package/network/services/wireguard/files/wireguard.init
> @@ -0,0 +1,31 @@
> +#!/bin/sh /etc/rc.common
> +
> +START=80
> +USE_PROCD=1
> +
> +service_triggers() {
> +	procd_add_reload_trigger "network"
> +}
> +
> +reload_service() {
> +	# delete old peers of related wireguard interface
> +	wireguard_check_peers
> +}
> +
> +wireguard_check_peers() {
> +	local iface peer
> +
> +	# get all wireguard peers
> +	for peer in $(uci show network | grep =wireguard_); do
> +		# extract peer section type
> +		peer="${peer##*=}"
> +		# extract interface name
> +		iface="${peer#*_}"
> +
> +		# delete peer if iface is not present anymore
> +		if ! uci -q show "network.${iface}" 1>/dev/null 2>/dev/null;
> then
> +			uci -q delete "network.@${peer}[-1]"
> +			uci commit network
> +		fi
> +	done
> +}
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
