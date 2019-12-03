Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7D1111BD1
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 23:38:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1PX8ZgTidilfZKASXGliNDiD/qeb/fRpLnckKJH1Cok=; b=AO6VLbAVdj/Z44
	YSBUj37rgDoxkypKgsgqeXFLGtdBOpaQfTKbvsyRFI0Oq1UISDq/5szv7PN53jMWCelhsf3bQeOd3
	eU1UieYIvU37j0Vz2RkzR5sjXaOJlteukNjeymU8zGMn9vKniykcFsTQS9eBRxES/Z7sTUKjGp27R
	MZDwB4e6PUpjPqvXHwpfBfaj1BYRRy3mDhakLRlpEmTCn3wqsOxb2ub9ZSB4ze1NVal6kvNc2wMCf
	MHUKqbc+6uLWe50PzqAdEt5saqf8vABNhgmaSaog05NfT6o1xyN+TV4t8Ek9EssXokMghjqbP3iF9
	n9oIIYSehxMxqxG9cdlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGns-0005bm-Nm; Tue, 03 Dec 2019 22:37:56 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGnm-0005b5-Lc
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 22:37:52 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1icGnj-0006QD-UM; Tue, 03 Dec 2019 23:37:49 +0100
Date: Tue, 3 Dec 2019 23:37:43 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Moritz Warning <moritzwarning@web.de>
Message-ID: <20191203223743.GK1281@makrotopia.org>
References: <20191203223313.11820-1-moritzwarning@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203223313.11820-1-moritzwarning@web.de>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_143750_704468_A8C5B23B 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: fix inverted reset led for
 ravpower wd03
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

Still, now commit description and title mentions 'led' though this
is a key and not an LED.

On Tue, Dec 03, 2019 at 11:33:13PM +0100, Moritz Warning wrote:
> Signed-off-by: Moritz Warning <moritzwarning@web.de>
> ---
>  target/linux/ramips/dts/mt7620n_ravpower_wd03.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> index 7dcff46917..bcc1e2c27b 100644
> --- a/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> +++ b/target/linux/ramips/dts/mt7620n_ravpower_wd03.dts
> @@ -32,7 +32,7 @@
> 
>  		reset {
>  			label = "reset";
> -			gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
> +			gpios = <&gpio2 1 GPIO_ACTIVE_LOW>;
>  			linux,code = <KEY_RESTART>;
>  		};
>  	};
> --
> 2.23.0
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
