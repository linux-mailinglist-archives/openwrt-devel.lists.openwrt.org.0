Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1732D1E90C3
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 13:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/yVw/q4uIVE61mGVQxJQMREisnvy9EWLb4TX8xM9yw=; b=aTt9KE6gO0rz8c
	sPzT9ps4+E1BTrUFTsFgxBiu+v655CoWlX6FObI2yWfXHyhZspYfzeTtRw1OcAHrlKcjKoJGqG/0U
	Tpx7dhuOUUQxEdi5vW+DoNQ08ETTn9weqve+7yuCxTVCojfnoiDmutuvFhBk5uk75Kxar8SD/BLur
	k8GSEMY9vc7nl9/7JO4Nee5W3zt06JRoLDkWnKHhBq7rRX7hsaoZ/79Eq7DsNds7rflgXNcuCleer
	nqtJyo3GO7AHeY+LbvSRl4Of4D0AlI96O3GKjrtU1liYTZBCrejXlkNBjV7iO0Npwab16JM90sdwW
	isT8G1HCKpS0AbO4A75Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jezVG-0003I3-4M; Sat, 30 May 2020 11:18:14 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jezV8-0003Hf-O6
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 11:18:08 +0000
Received: by mail-lf1-x143.google.com with SMTP id c12so1196007lfc.10
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 May 2020 04:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=CX/DmWm3LyhY/MrwfxiAVPqPpvVXvb223wlBheOne54=;
 b=Tg1sWjdWJrpowUou1FLSEH94UuziXPVYCbnNbDhrb3lug8y8vG1IMiLxUC6qNzH1Vx
 0SDHMPrqjhRoN8jut2pdVEUf52B3M2+ZAiC/tYIzVeTpTXRnhJSkVBkXbcrApBS7LnTW
 wt87DRt/MfuYYwqIzLVQKzOohGSWRG1nblz0WDTU0REf2kdEglBLbC80l1LNYTSfXdGC
 4jhOfTACHXy5wgtwGFEfcIZexlvlV0pBCNgNyjQNCOnUasIjkIbbbqjBu7hWjLxiyVkx
 tiHDsIXKSpS82mWShji2/AIYAK7+RLnxdEmjsZ+X1/39Lnhpgm51BaYUD43zVqAES6z7
 ho7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=CX/DmWm3LyhY/MrwfxiAVPqPpvVXvb223wlBheOne54=;
 b=WjIyK3R0J4Ps3ZKqjaDlLR6wW2bf6cp20hakLvu+x8QuT1kVqqn6RJmnai+7duZkRp
 y4F66DuG8Yb788N2TN+ffA3gO39RQiaM5HfSf3fai8fKAIGtXzm5zIL1SW5VIdhn6piX
 vVIZbtMQurUCaJg/ozMtwiezkZgKA07jtkzuTfefE/ls93LIZGdl2UmbCDsT35OtwVcC
 LPMTUfTMHHs0sP9J4CQ3bfNmdlGJaKXbaS+kjDFKbSAw0Xfhux0TKlDAL/8Xwn0WwvyQ
 xi/9Zq4qLyCheIMposZ1xJaz/f3dcGq9i9V8Tjdyk0Rj1fkHCaJ0FwnhJV5rqd6MqsB8
 1STg==
X-Gm-Message-State: AOAM533hBOQzDF0l2UNrb18yPOaUmLwGYIAkIQguocZDFRYuEatZF65X
 qdkh0INyooH1VgBa+jo4gCKB+4AWXOHWJv2XvxIDQg==
X-Google-Smtp-Source: ABdhPJzDz4AnhxtH5JpJcbHIKFgEwgMMPd5P7aRFLMGaavqKD6yVOfQjLC+ntw1JL7B96be16Q4mohCZK7nM+ixvCus=
X-Received: by 2002:ac2:5a07:: with SMTP id q7mr6701412lfn.77.1590837481546;
 Sat, 30 May 2020 04:18:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200529122039.1246329-1-linus.walleij@linaro.org>
 <013201d635e0$2abfaf00$803f0d00$@adrianschmutzler.de>
In-Reply-To: <013201d635e0$2abfaf00$803f0d00$@adrianschmutzler.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 30 May 2020 13:17:50 +0200
Message-ID: <CACRpkda8_Qi=rETdvzKt0dG6bG-tsQ1+JzRA7CJ-qdNHRkUUqQ@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_041806_817865_406C61CA 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] build: reflect DEVICE_TYPE to top level
 config
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, May 29, 2020 at 7:39 PM <mail@adrianschmutzler.de> wrote:

> sorry for intruding into this subject, but this has annoyed me for a long time already.

I am very happy that you are taking up the subject :D

> I've just sent a small patchset to tidy up the existing situation.

Excellent, will look.

> As you stated earlier, it's just not so easy to connect the target and device scopes with each other. At the moment, I see two ways out of this:
>
> 1. We just live with the fact that the switch between router/nas/basic is per subtarget and adjust the code based on that.
> 2. We make the DEVICE_TYPE a real device-dependent variable and move it from target.mk to image.mk. Then, we could still set default values per target, but would have to adjust DEVICE_PACKAGES instead of DEFAULT_PACKAGES, which would lead to problems when building the Default Profile, but would make it much easier to deal with the individual devices.

I vote for (2)

> Anyway, thanks for stirring this topic up again. Unfortunately, I don't think this will come cheap.

Yeah I started looking at it and it was "mildly confusing" but as I
anyway had to
learn how OpenWrt is generating the Kconfig menus from Makefiles using
a perl script it was a minor thing compared to figuring out the overall picture.
I knew I would get it wrong anyways. ;)

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
