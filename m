Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093F6FB96A
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 21:08:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPi06+urj+KaOVssn4iAqTxqIE1P8aFyTNnLU1zq6fo=; b=WzsQGfImy13fxx
	yldQNCsc74TYKkaABWZ3h9yTT6lY0eZiznWDmD5h/6PeGcXfBHMoGt9yBCRrFM7gO6Xhal0mzBL5G
	9yhwLDWD05e5IEMiEQsit5gvyRbUlm/yOeOcgSV5PbYiMRvp7LaPQlzjJ5zkAgbbh05ee2tQ1AL7I
	4578X+duVionoBOZlux4Mwiuy0deB6cOUFsJvQ1RgGmxH8eFAZ8lk1uTpKN6I0nKNUzX/9AcWniKD
	YGhOsYf55Jivg4V3p6TfFRZAi0mDx7sIXuxt9tGyWLSciV9hCLXDb8VdP97wxURBYn3jz5sEjYJRm
	ELc1UG7kuo4PM6ypYIgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUywW-0005FF-NI; Wed, 13 Nov 2019 20:08:44 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUywM-0005Ej-Fg
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 20:08:36 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iUywF-0004ED-Vy; Wed, 13 Nov 2019 21:08:30 +0100
Date: Wed, 13 Nov 2019 21:08:06 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Russell Senior <russell@personaltelco.net>
Message-ID: <20191113200806.GA1279@makrotopia.org>
References: <87bltgller.fsf@husum.klickitat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87bltgller.fsf@husum.klickitat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_120834_521981_E74BE7A9 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add
 /usr/share/libubox/jshn.sh to sysupgrade stage2
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

Hi Russell,

On Tue, Nov 12, 2019 at 03:33:48PM -0800, Russell Senior wrote:
> 
> Discovered recent changes had broken sysupgrade for ar71xx mikrotik
> rb-493g, traced the problem to missing /usr/share/libubox/jshn.sh after
> switching to tmpfs.

I've applied your patch to master. Do we need to apply it for
openwrt-19.07 as well?

Cheers


Daniel

> 
> 
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>  package/base-files/files/lib/upgrade/stage2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/package/base-files/files/lib/upgrade/stage2 b/package/base-files/files/lib/upgrade/stage2
> index 5d3d46ee80..41a3b2aeb3 100755
> --- a/package/base-files/files/lib/upgrade/stage2
> +++ b/package/base-files/files/lib/upgrade/stage2
> @@ -48,7 +48,7 @@ switch_to_ramfs() {
>  		local file="$(which "$binary" 2>/dev/null)"
>  		[ -n "$file" ] && install_bin "$file"
>  	done
> -	install_file /etc/resolv.conf /lib/*.sh /lib/functions/*.sh /lib/upgrade/*.sh /lib/upgrade/do_stage2 $RAMFS_COPY_DATA
> +	install_file /etc/resolv.conf /lib/*.sh /lib/functions/*.sh /lib/upgrade/*.sh /lib/upgrade/do_stage2 /usr/share/libubox/jshn.sh $RAMFS_COPY_DATA
>  
>  	[ -L "/lib64" ] && ln -s /lib $RAM_ROOT/lib64
>  
> -- 
> 2.24.0
> 
> 
> 
> -- 
> Russell Senior, President
> russell@personaltelco.net
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
