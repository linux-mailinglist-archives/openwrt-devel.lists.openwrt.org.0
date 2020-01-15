Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EB4913CCED
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Jan 2020 20:17:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tl/1VEG9T8DiQNRuz6WtnSHl+RD1gj+tXnrYnXxBFsc=; b=odIaTzDAkrignlmMzprWzUREs
	CYuOS+GNgvvmbgCiA/brSUH2du7ldBXAF/pIDC5JI4d1RqvPlj+k27DZ8F1FsHnieGhbbvrJMpHN6
	k4UelS2kxvky4Hn9hupc0Y4Aj+D30ou8Z3OhJ1gaoNe6k6ai3clfVD3GlApKB8OcbHjk1JC9YKhTP
	2X2p3FY7xlgsVFDmzyvPkBAbVjE58/rkCJv3wBeeeNLX+uITDJFV7cY3jjEwJe2oy6L2x7juCITHf
	yFIBQuxJigy5Q3sHAoM3T/LXVmLu+CYPusC+4UWPyLnLgIlsPevKyKDzL1E3/AkrK+0KxTH1UqRzx
	dp3QW3Mew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iroAa-00043n-D0; Wed, 15 Jan 2020 19:17:36 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iroAQ-000428-Gw
 for openwrt-devel@lists.openwrt.org; Wed, 15 Jan 2020 19:17:31 +0000
Received: from [2a04:4540:1401:8c00:fabe:bb99:c5ae:67a0]
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iroAP-0007Zv-1K; Wed, 15 Jan 2020 20:17:25 +0100
To: Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com
References: <20191107104031.31543-1-fe@dev.tdt.de>
From: John Crispin <john@phrozen.org>
Message-ID: <b1b2320a-5a19-d0e6-f1d4-62cba25c1917@phrozen.org>
Date: Wed, 15 Jan 2020 20:17:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191107104031.31543-1-fe@dev.tdt.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_111726_715886_E387C493 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 1/1] uhttpd: add enable instance option
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

On 07/11/2019 11:40, Florian Eckert wrote:
> With this change it is now possible to switch off single instances of
> the uhttpd config. Until now it was only possible to switch all
> instances of uhttpd on or off.
> 
> Signed-off-by: Florian Eckert <fe@dev.tdt.de>
Merged, thanks !

> ---
>   package/network/services/uhttpd/Makefile          | 2 +-
>   package/network/services/uhttpd/files/uhttpd.init | 4 ++++
>   2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/package/network/services/uhttpd/Makefile b/package/network/services/uhttpd/Makefile
> index 85b7be7607..2d1fbf4492 100644
> --- a/package/network/services/uhttpd/Makefile
> +++ b/package/network/services/uhttpd/Makefile
> @@ -8,7 +8,7 @@
>   include $(TOPDIR)/rules.mk
>   
>   PKG_NAME:=uhttpd
> -PKG_RELEASE:=4
> +PKG_RELEASE:=5
>   
>   PKG_SOURCE_PROTO:=git
>   PKG_SOURCE_URL=$(PROJECT_GIT)/project/uhttpd.git
> diff --git a/package/network/services/uhttpd/files/uhttpd.init b/package/network/services/uhttpd/files/uhttpd.init
> index 6322473b97..869f79bea2 100755
> --- a/package/network/services/uhttpd/files/uhttpd.init
> +++ b/package/network/services/uhttpd/files/uhttpd.init
> @@ -98,6 +98,10 @@ start_instance()
>   	local cfg="$1"
>   	local realm="$(uci_get system.@system[0].hostname)"
>   	local listen http https interpreter indexes path handler httpdconf haveauth
> +	local enabled
> +
> +	config_get_bool enabled "$cfg" 'enabled' 1
> +	[ $enabled -gt 0 ] || return
>   
>   	procd_open_instance
>   	procd_set_param respawn
> 


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
