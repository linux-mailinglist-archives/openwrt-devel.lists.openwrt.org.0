Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AD01A7854
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 12:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGxYtp3TQLTfDlEdtwPTrOKOUKUmk42TYs+bwSO2xQg=; b=DnTIGCWN6qnauC
	Tn63aLG/Fh8ke2eFd+13ggZ93Eb1LcudByht4rksBQSbj/Q5NX5S4txXOAXFx1C5mwktTu+fClpf4
	8bISNp6BK0cJkKk+Cm1TKgPK1c+K9IqQGk8G8tNr1zE1EHOFVcwHEtJA/cQ4vk0pJl2dT6qtsiYQM
	kDEswMhTRC5B6q9i0u15+HtHgOC11FzHaimVP56DetSWCooCNPSu+qDq3WOPIGcvUptokngN0sAJq
	2lQ93wcmz5stcVPTAZQSxLe47Yc692zGlJgm0VQD9V6ujv14DmkcKRiLtHPVA1B7pGb3uqMd59AAO
	U+oWNqQp3jLs5DpcUt2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIfv-0000Cu-Bm; Tue, 14 Apr 2020 10:20:15 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIfg-00086k-Oc
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 10:20:02 +0000
Received: by mail-oi1-x241.google.com with SMTP id t199so6566478oif.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 03:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pm1cB8F92MPBriynfoGXZMz0cNmdHoUx2mwgMBdGb3g=;
 b=KMD8HT1v3VkxuMcU4S2Z94MqJVvx2/HQI1Sl3MWdCoptwHJC+h6w/id6ycht5i6+Hs
 VVN1OLs0xg8BJlpwR/prsEr0RcYrEqZzBkxQ1BuCHs4egNsX6d1t3yWbPYRKQy9Qh+67
 tXUKYO5hvUnAfVPcrv1xtbTUu5Gs6fn5WtI8vdD29mUReX9EBjdnoRxZ+Qrt5bolBmJ3
 SSoQyiDAZc7PUeFuZpZJIZXlRmNWYchp0wm5ICBNCMbGT5yQRAiTitNvCetwpmopsrbh
 S3TPEXgWo1r5HC1fIlVY62yhg0s+uSd6dhhLedtl+oY6Y5a2XxA3P8UqqHS6lUEnucfg
 kZ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pm1cB8F92MPBriynfoGXZMz0cNmdHoUx2mwgMBdGb3g=;
 b=MsqUgnVfJrz00rn5pJNZQ04k6uxEsV7y8bDEoQhF4sYRjwygS9k0JxVzuqJKxTwE+y
 T05VC2FJq2W0iRgz8fKYORaPVp3yjkiLnxYpfCCjxqUERrvDDP8DIi95kZDlLXiX3s9G
 8sUfnZOhUDGFAL36ukEsWAjjF3fj4m02y1gNUzi8f5cjGOlNjM6UJ0mPnSS3hzCM6rDb
 FxOzaU4q6uqJ53QRcZq2xOuyuf198rLiKgdU/pncZ0pdqwd7f807mMjm1Al4l5lwskaL
 OWgkjrymgJWOvLDoaTDfG7yQxGmHo9awdKVR5xjkuX0jkq6HRXDfNAkOzYuO6eK/Z3li
 DT9g==
X-Gm-Message-State: AGi0PuZnujFORz5h9FiIvvNqV15WKpzYd7HHtGHKEsbxS2wohRai+4U5
 M6Tf4LPAyrpiuYsKS3WlmekZWki2HtU2PM78JVo=
X-Google-Smtp-Source: APiQypLRy7DIZUiRVbck59TiESlBg6vdGN+MV0TUFpIsUgPU2yJ/i/HKKMwkAyXsSZoNXpDTnt7RcQTxvLKEATH7csw=
X-Received: by 2002:aca:d07:: with SMTP id 7mr8672834oin.77.1586859598452;
 Tue, 14 Apr 2020 03:19:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200414064438.1172618-1-gch981213@gmail.com>
 <001101d6123e$e3da86b0$ab8f9410$@adrianschmutzler.de>
In-Reply-To: <001101d6123e$e3da86b0$ab8f9410$@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 14 Apr 2020 18:19:47 +0800
Message-ID: <CAJsYDV+g-Mj4NVeXPVJbCuZq648iDTbydvwNNNMp5Aw=fHHSSQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_032000_802804_0555CE0B 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH RFT] ramips: mt7621: use lzma-loader for
 all devices
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

Hi!

On Tue, Apr 14, 2020 at 5:27 PM <mail@adrianschmutzler.de> wrote:
> be aware that LZMA_TEXT_START=0x82000000, so this won't work on any 32 MB RAM devices if I calculated right.

Correct. But I assume there won't be enough memory for
userspace programs if uncompressed kernel reaches 5MB.

> This of course won't be a problem for mt7621, but if the same strategy is applied to other subtargets, LZMA_TEXT_START might be lowered then.
> So, maybe it would make sense to lower that right away before testing if that applies. (One obviously could also have subtarget-dependent values for that or just disable all 32 MB devices as well...) On ath79, for example, this value was chosen differently to work on 32 MB RAM devices as well.

lzma-loader can be executed from anywhere in memory. After
being executed, the first thing it does is copying itself to defined
LZMA_TEXT_START. We don't really need to test a change of
LZMA_TEXT_START on every boards as its our own code doing
the same thing. So I'd like to leave this untouched and change it
later if needed.

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
