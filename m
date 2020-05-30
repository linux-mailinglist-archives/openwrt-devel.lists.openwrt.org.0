Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADD41E90CF
	for <lists+openwrt-devel@lfdr.de>; Sat, 30 May 2020 13:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4Q6TgrtoCKfyMnTVfeRa6JeZ7eiIMS6RqoqS5KshMI=; b=G0DqvLPq5L4aSc
	V3XtPzFlh4iM92z+gcJFxdSmLWRxJ9hQRGbzFQ+1DqVts+haNKsjqUxKf7SgNyVy8sQz96QjOlSRV
	me8NnXELJiBLW8J7H4XWJPoaL86tsPzcevY5/Hmybz+LmWxqytF5wQSJBsrze9AVzASNqJZwSRDl+
	pM76z3iqtquKovCXUPLJV/ALj6v5wxOUEIOE8VFkdS2hzbZ3VJYJ8OZytzkvGeVnAhe3ucq0eKavD
	mVA7+8u6l8CcndNfg87aROjAZk5TTOCNT5bNlrqh8R6NeXTjatBACINm7/ySKlYI9jVfRrpztOBye
	85ZpNZr5JX9dzlWO/K+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jezib-0003xd-Vr; Sat, 30 May 2020 11:32:02 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeziV-0003x4-KG
 for openwrt-devel@lists.openwrt.org; Sat, 30 May 2020 11:31:56 +0000
Received: by mail-lj1-x244.google.com with SMTP id m18so2426166ljo.5
 for <openwrt-devel@lists.openwrt.org>; Sat, 30 May 2020 04:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gjDeXe2nSJdCHJYewhEBdwtO8khgqt1v9abSOztJWmc=;
 b=xEEuktNlPmNMVyWXQwQI+iZPPeGt780jMomnIEkiOOzQgrSp+uSxM9Bb77BXN0iXQH
 bA8De6YpoVm0FGmmlhKJMvkZTqKAnN38/arlMQjD8zfQwfFJ6WIiEFokSrEfGHdq32pj
 lTqDnvo5f5ajEFln1dtXjfgKkJfGrL7MbH/lhV9QaUg97ZabwnVbwF0rbLXRzI7oufoe
 Vm/aIgxZfLxHzeLhCNcztfEndD9XrruK089kdfKDhbUjeyj4BV+jmaDsFHtTm11CPrwB
 Kx/rzP8d0ceehexwxJPqCORpSe1/oOKMVGVS+JTefHRfJW0Z2LUFNfjPAsVXhBJkYiZb
 DvdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gjDeXe2nSJdCHJYewhEBdwtO8khgqt1v9abSOztJWmc=;
 b=VJJW4m8EcCJ8XitF2RPmAMTqI3MyzNPfpWYTLcfs0L4J8QT8RWml0uoDT4G+xSkC99
 QBnRer3vRho/iBYzfumDIOq9oaaZLINt5e9IvA4S/w5wbp0C7fJcPGESIw48nvIFClxn
 XurWsPegKsEsOgF47Bd8I21E36oCCwwqeOgji/yB2LpEWgE3kuA5NN1zAxKQM+WQgST0
 QDKZ1Rr4vPckkGRcqvgzMPAkBc/B0ppZ+6d09V1N3Ur2y9qsRrqHIkFgPbm6toNxyAME
 r5415r350snKxKQPESHRyYIgKNRhWbzwPp95lEhJrhtRhCaR0g9mSsZa6vifYt9OiGOD
 kVNg==
X-Gm-Message-State: AOAM530NhqK7oI4ZeOh9yotpJS63yMYjHAdN+g29f3SD0iFIs9cztVE/
 ZIrD7sYjdRsbpnz2hgWlO7+EFbXNrlaFhcCMHGp/nA==
X-Google-Smtp-Source: ABdhPJxE6hHbJNUF+5NiWYzDpI1QBOXvCBoEgGlxUXUXfKg/2cc1obts1Ux2nLseeBOj8Bqs8pCEaeTQHpxiMWEPOFw=
X-Received: by 2002:a2e:350a:: with SMTP id z10mr558297ljz.104.1590838313823; 
 Sat, 30 May 2020 04:31:53 -0700 (PDT)
MIME-Version: 1.0
References: <8605e0b0-7f4b-438b-a337-b6253c094f07@universe-factory.net>
 <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
In-Reply-To: <f960c103-c4f2-260b-6d8d-a34dcd5f47fb@gorani.run>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 30 May 2020 13:31:42 +0200
Message-ID: <CACRpkdaLS+GcgGceHu2Rt5UQov-3Bw2e6JpX9v2EKHSKvbqjwQ@mail.gmail.com>
To: mans0n <mans0n@gorani.run>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_043155_672444_367C0B51 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
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
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] treewide: rename DEVICE_TYPE to
 DEFAULT_TYPE
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
Cc: mail@adrianschmutzler.de,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Sat, May 30, 2020 at 12:20 PM mans0n <mans0n@gorani.run> wrote:

> Busybox hdparm is about 8k and full hdparm is about 93k. I think most
> NAS devices can manage that space, so I agree with Matthias.
> But the problem is that full hdparm is in the package feed, so it
> shouldn't be included in DEFAULT_PACKAGES (unless we move the package
> into the main repo).

Actually I think my approach in the initial patch to bring the
device type up to the Kconfig level solves that, you can use
Kconfig to

    default y if DEVICE_TYPE_NAS

(My Kconfig name idea, could be something else, it is
a simple bool.)

That will make the package or any feed package default on NAS
types using just Kconfig to pass information of the device type
around.

Yours,
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
