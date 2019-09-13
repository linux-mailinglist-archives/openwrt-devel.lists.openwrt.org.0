Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A8AB25FF
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 21:27:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aIOBoDTOG4O3q8c1te1nkM9BZ6qho4P8P4jwLlNUvo=; b=gKE8lheyaksdDv
	ECbqSS+sfiZ3US8d6H35CH9agikrAWKV0AaLXp9Scb7jaWc1mQ6RwKndg3f9TGVIXjeMcxm4SnWP+
	ZFNDC/7i/+whgiyya8FtQGFeBfEm8HRUni6L3fk/Xke+dcbX1/JolXm2xvSkD8YCXUHC3bqQklKf5
	OjVslu6aNZD2ZgDCT/kZHrodt1tEJMtyheCoPM0A1pLDst79r5ZBh8WtDieJmDFUm++VOzeq3PZLq
	zSPzxPsPPjIweJCjrxXjic+NkO7E44cRjnuUF+w7Jr8hlT4kyiW4iZ14rlvQw5iPrh+sKWfU7SOfS
	5HfRBKZluAMCTx1k5xXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8rE0-0003AF-Sn; Fri, 13 Sep 2019 19:27:20 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8rDs-00039o-L9
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 19:27:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id i1so32564967wro.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 12:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1hSPaoPKhQm7aDphi5aNWN8WpH/ZV4hKK9xIKYdHi58=;
 b=UplOtHjJKzdcsJ6iZpwxVbpnw6urifodrGZ9K2oKnN1S+PAUnjwbFYfEuzNSmpEB/e
 gSXK7Gs7DEu9pAkxpWbySQT/Mrwud4wlcIaeUkPped9mDQmqgDFUpp5hWG9BpreJhPb+
 dVlzym6PRKQB3qjB3MO5HzoCagA0RlDNIbzIFRTaDz3Bv43fb0bEQ7hJ4BEu6CNEEQ3t
 8hstzc6P8pa5AuNdrtKZl7fLTfSK0R1FrAakF0aLOqvatNkinBS54+Jy6LWzv9wwonkc
 v+0b51QdRntc5+ygHDWZlj5mxQaPppKisBWDNdwIaSrNkAQ1rF+oP7o562UTH0hED74p
 2ylg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1hSPaoPKhQm7aDphi5aNWN8WpH/ZV4hKK9xIKYdHi58=;
 b=cc/Z+xsI9QWt43TjiYIzSNtFPUAs2IoS1POqghDWsRBxn/j06mpcRWLIKDeGK/QkVk
 nrDvEvE732YbHaGWjxEc/iK2rhp9/maowkV2OPBgapQiEgNYxEIhmu3pq5Bvg4HpcujJ
 QnsCQXDDuPk0kC2zxSsoFTAsHF9PYIcNUOxEElhrS4iRstbmfeMl1zSRBKFFlDZebE4r
 qLtP+6Eui3ZKztyXOGSR49CQP5X7b/iuQDOfqJzp2Kr0vvOE/HmkLzRbD92DmQksuf6H
 qlT6aTdkMk4PfsViEnOic2GiBDPM3icjqZ5qzs4BrUKe+uumyHpS+Sg/MOwCAMGWo2fr
 Kh3Q==
X-Gm-Message-State: APjAAAWq8Mcyl6JxOPE2Bt1DnnL41vt8x3HxMTUj+24whcs0K2VuEsLm
 1UtjeLyr+6qEB62/NB4s6OFlGeD8
X-Google-Smtp-Source: APXvYqySdUW13TUgMrqGXvzLbES/UoSEIisg+9G7H/A246PsFqVT5haHjAR7qcvVJT5c4fRLA0FdQg==
X-Received: by 2002:a5d:4d51:: with SMTP id a17mr2170095wru.349.1568402828551; 
 Fri, 13 Sep 2019 12:27:08 -0700 (PDT)
Received: from debian64.daheim (p5B0D729F.dip0.t-ipconnect.de. [91.13.114.159])
 by smtp.gmail.com with ESMTPSA id o14sm21166718wrw.11.2019.09.13.12.27.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 12:27:07 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>)
 id 1i8rDn-00026W-AK; Fri, 13 Sep 2019 21:27:07 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Sep 2019 21:27:07 +0200
Message-ID: <8090343.50tsv200CS@debian64>
In-Reply-To: <20190913010815.14962-3-yszhou4tech@gmail.com>
References: <20190913010815.14962-1-yszhou4tech@gmail.com>
 <20190913010815.14962-3-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_122712_696273_49563363 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] apm821xx: image: remove unused
 kernel.dtb from IMAGES
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Friday, September 13, 2019 3:08:15 AM CEST Yousong Zhou wrote:
> It's a leftover from 2271967f ("pm821xx: utilize build ARTIFACTs")
"apm821xx: utilize build ARTIFACTs"

Otherwise

Acked-by: Christian Lamparter <chunkeey@gmail.com>
> 
> Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
> ---
>  target/linux/apm821xx/image/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
> index acfd478755..8203de39c5 100644
> --- a/target/linux/apm821xx/image/Makefile
> +++ b/target/linux/apm821xx/image/Makefile
> @@ -238,7 +238,7 @@ define Device/wd_mybooklive
>    DTB_SIZE := 16384
>    KERNEL := kernel-bin | dtb | gzip | uImage gzip
>    KERNEL_INITRAMFS := kernel-bin | gzip | dtb | MuImage-initramfs gzip
> -  IMAGES := factory.img.gz kernel.dtb sysupgrade.img.gz
> +  IMAGES := factory.img.gz sysupgrade.img.gz
>    ARTIFACTS := apollo3g.dtb
>    DEVICE_DTB := apollo3g.dtb
>    FILESYSTEMS := ext4 squashfs
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
