Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A8060C0F
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 22:09:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8XsFG0EpVc4omiG27XmyGX6IrkVmJTopSFXORjjkKNY=; b=iNB1ZFn52Sx8sa
	QpGj3ziFtBr6ZrfmuZlQIt8SoutlcS6NsP1JG98+V2PwC2Upo0WqM4eFmysuhP1SMYgJ84JoQ3b14
	Hc3J9RA/MI+7P9Nh/Dd/jd9OPNXpsNFFYo60UNp4cgSDh1C6Wtr7+TKNo+7y3jz0JIwdUDeSg1YCE
	HmOc2JmQj3+rN0UMCI2+EP6npMvbSKQAEgN/BtAalSVpBDIwjDwbZ3dWmlMUxkzkAG++ShklFmD/+
	Z9ee28m/7ALgwwW03JiLtT5iOrVFipAHQ5AMr/7fYciSK+1HBcwthRRwdK+81Q85zKBu6j3DRJ+ct
	AQvfBI09mlqQD8EBY2aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUWB-0004uj-23; Fri, 05 Jul 2019 20:09:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUVw-0004uG-Mi
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 20:09:02 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so10985459wrt.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 05 Jul 2019 13:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UheTqcHBZ7THYIL6q8qJ8S5D+twBmxnc0WXFod4VKng=;
 b=sna4c9mVd8flPs9Lgelc5COXnbZGT80+DLeSzmH/VH41VDdzcHoi76yaAt99TPIKUw
 HKcxd1l0vVzOtfsFZxd3aCVZwFPWHQV4LrW16yR+mBWXaj0Sv2alQQWXnxyN5A7+hVg3
 ERIqr4b2bWgKWcqXAF0he++L8lopD7NfEXfqzVt9dAdsukYmwN18VXBi4Agf8yTkrpcF
 aRn5PwYM7cWMxlvZq2xJppwXXNX1bo/D7AUB2b8Vx0fVNSX13XOAzy8OUhhSZZHk869O
 5uNi9E3EVuQZSmbRmX/ydQpsE/i82Y+uz0rnYXLT9dVmwmX3KImFMoF/l5im1+hbTTsT
 EoUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UheTqcHBZ7THYIL6q8qJ8S5D+twBmxnc0WXFod4VKng=;
 b=RPknDj+977Pk/tYMUfz7a2/FBeg//L0oH7DYrpsd+aenxTrL1nS286xjppP7eDtOTD
 D1xYf0pBj8CLrVXo+RjUX/DAoyqD9k6vmmJ7kle1JqVmmSYXHf3XnfRjfM5bs3+X3r2F
 HshVPdH7ehOSaFiuow7JzYzI5CnHJK1YdWWN/Kv0IRxThhna4MU+RiAZ+WHoS0jKhSi8
 W2rRhhpc4LevIakbVKjmGkzHRVnnojqinjNnJZiw3PApgaeWdyigkE0cIOCA+FU2R1th
 G3S1u5ycwhlmUcFjJcsAhSDE0J0wFW7l89fniYJ87za67TuCT9bR2dcKfmfpDw2a6QS2
 nCNw==
X-Gm-Message-State: APjAAAUc+dzACrr1RrUuRAncJnlyCsiam/eGaWri+24dJZmDP/F10zZX
 jIYU8gOsNdzMoaDV1tRxDAfG9IvO
X-Google-Smtp-Source: APXvYqxG85Nt9YmWyV1QBkNCyFzr1KkBskQbTTXJpeEz96vwk02BxipmcMYOHT4ubI8rgzsDEzqPlw==
X-Received: by 2002:a5d:5303:: with SMTP id e3mr5120967wrv.239.1562357337196; 
 Fri, 05 Jul 2019 13:08:57 -0700 (PDT)
Received: from debian64.daheim (p5B0D78D1.dip0.t-ipconnect.de. [91.13.120.209])
 by smtp.gmail.com with ESMTPSA id q10sm9435481wrf.32.2019.07.05.13.08.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:08:56 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hjUVr-0006M5-MM; Fri, 05 Jul 2019 22:08:55 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 05 Jul 2019 22:08:55 +0200
Message-ID: <21122158.nGdb3KtYbb@debian64>
In-Reply-To: <20190703201651.164-1-rosenp@gmail.com>
References: <20190703201651.164-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_130900_745105_70D0BCC8 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: Re: [OpenWrt-Devel] [PATCHv2] toolchain: Don't force GCC8 on ARC
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
Cc: Rosen Penev <rosenp@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wednesday, July 3, 2019 10:16:51 PM CEST Rosen Penev wrote:
> When selecting GCC9 under Advanced options, GCC8 still gets selected.
> 
> Signed-off-by: Rosen Penev <rosenp@gmail.com>
Looks like we came to the same conclusion (see date).

https://git.openwrt.org/?p=openwrt/staging/chunkeey.git;a=commit;h=a03fe6d029d81c8ed6a5cd97603f975acf6731d5


> ---
>  v2: Allow selecting GCC9 but not 7 and below
>  toolchain/gcc/Config.version | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/toolchain/gcc/Config.version b/toolchain/gcc/Config.version
> index ef9bbb82e2..2a9dc289db 100644
> --- a/toolchain/gcc/Config.version
> +++ b/toolchain/gcc/Config.version
> @@ -4,7 +4,7 @@ config GCC_VERSION_5
>  
>  config GCC_VERSION_8
>  	default y if GCC_USE_VERSION_8
> -	default y if arc
> +	default y if arc && !GCC_USE_VERSION_9
>  	bool
>  
>  config GCC_VERSION_9
> 





_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
