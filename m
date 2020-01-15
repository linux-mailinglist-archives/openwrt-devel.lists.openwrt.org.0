Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA28613CE0D
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 21:24:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2nwsT6A0OvR3PlVKaPWOeayggWzW5BxuLKyVCH9LjaI=; b=H9WlFllXFLGmRDTnD2lRePBgw
	yC1cUB4BmzwKP0odnAcKzm+xMyvyLMTN+FWqAbuNAzgbqGt5R2aIh411HI1tWwaLPcpOnRwW0VJEx
	fx3zvBIW43DtS+0aOfXFLEpoqAVyt5rcA+v2nQS4yCAriIm6NJRA2wn1VkWXf7KPxpKbVTKowZ2Cd
	OaGeIAYIhwnii25EEA9+aR3nS1yqyasnl1YWpISwQCWC/M9XjaqUF6vGmyqNQboKycs+Ah/itkBWF
	3iusp3ByjnPBSTLDoI6dQYzin/q7LAxO0T1B3/bY8snBdyrdM6mL+85QUeo35DN6+7nRUnxuFExEO
	aE1e3dKig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irpCr-0000YV-Uy; Wed, 15 Jan 2020 20:24:02 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irpCl-0000Xo-Rd
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 20:23:57 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1irpCa-0003aE-Ng; Wed, 15 Jan 2020 21:23:44 +0100
To: Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
 Jason@zx2c4.com, ldir@darbyshire-bryant.me.uk, daniel.engberg.lists@pyret.net
References: <20191205105805.29869-1-fe@dev.tdt.de>
From: John Crispin <john@phrozen.org>
Message-ID: <71506a78-69ff-2c7a-dc8f-2d2a32509fa0@phrozen.org>
Date: Wed, 15 Jan 2020 21:23:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191205105805.29869-1-fe@dev.tdt.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_122356_046950_9F90C820 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] wireguard: fix interface remove for
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 05/12/2019 11:58, Florian Eckert wrote:
> +++ b/package/network/services/wireguard/Makefile
> @@ -93,6 +93,8 @@ define Package/wireguard-tools/install
>   	$(INSTALL_BIN) ./files/wireguard_watchdog $(1)/usr/bin/
>   	$(INSTALL_DIR) $(1)/lib/netifd/proto/
>   	$(INSTALL_BIN) ./files/wireguard.sh $(1)/lib/netifd/proto/
> +	$(INSTALL_DIR) $(1)/etc/init.d/
> +	$(INSTALL_BIN) ./files/wireguard.init $(1)/etc/init.d/wireguard
>   endef

this code is not in the tree ?!

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
