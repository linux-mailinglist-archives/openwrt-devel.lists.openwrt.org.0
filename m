Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7590888C56
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 18:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yc+5z0QQU784ct/YTHl2wp3bI5Oiv2nbsVfE8tjxG70=; b=PJWo0Du5y+ST6z
	hPoZep7sCZtLnqxGHkhn25MQHZwVNpJd3UAi2R5NOk1dFxoD1xD7mxpLJq8/tcMH2zsft1J9CPblP
	8ItPxoubEE2PZS+HJSTaHzMjYcvL4yhXXRiky6O8epe9Af1Laew23GWLXCFGtNIkfQKTrL4QfMA3E
	CmzUfZzqo7vmrtJ0CDFQ9Rz1AfRo5cTh1QhWzLAiZ5v9BZPKTVOuxNlBtbQw6xKtNAOCI78WEex6Z
	Brdtm1etDYha1ABuOtQvCi0L1fJHf8V++kqrncgmimODu6XMx++8KBu//y9eDBvJrb6onND18cz3c
	HFczdcYhNMckg0TdctaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwUaV-0002d0-Cn; Sat, 10 Aug 2019 16:51:27 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwUaK-0002ci-Ln
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 16:51:17 +0000
Received: by mail-ot1-x341.google.com with SMTP id z17so26131137otk.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 09:51:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zUFqUwN7GDT2XG1fKvvjZGrKD+Jj9UdbZQ0zDX0No4E=;
 b=NHkwoGhg83QifeNe9OA+DcQ/JMj5RHkRAWD2neP197OJKU7IJ4HJBrhi5FBGFP9dfC
 eIBtxSGi/oWTGB4sUyZhAiON4x9FdnWeMk1VlhNdsaj0gopwNbeVLBj9GVodbWccxHUl
 LzVsEhCgXDlgdqaPnutFrUhb1ELtt/DnMuph0UlJMHouTKuBLkR/1EwMaiyuZgaoPiVA
 HmhTy06iZ7CXA6I+l4yHRxjMRzovZYvYg7TqIZyEPh70kI3pb3i48hqedRms8LTxhYhs
 S1GUwfzY0syEBqhtFOzgso/dbXPuKnYeTVfl/KuGz2NV6Rp1u6J/kyG9HkU9fuGErU6p
 ovyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zUFqUwN7GDT2XG1fKvvjZGrKD+Jj9UdbZQ0zDX0No4E=;
 b=IDcRsx1ry+0rTMGzGghjmRWULxJvRE3APn425KXw1WjZZQKsBMKPAD+H6kgsgnbmwh
 IS+EJulMoChzk2jYXPIuFXc2jwxcAleuadAHO5tzJzRRVyCEidCvkXxM3ZblIUd/T9lq
 HVDIu0dL6A8/hrCA54AudiFa0rh6LtywGJy0pMnLGNKCT/6Ha8XNc0q4RePHfxcGv9Tp
 ShQc4G7gaQu6dQi3ZeXqxFBIQwkIF/2fMlwxsf1UU5G9znFdQzRpbACN9NPlyqmUijq7
 P9hWntXXozrr0GjdhgCB/Cu7CDCxa5PR1Zrz8N914K0DZgJRZr5iOUrM4gWz/+rmLlG4
 aBwA==
X-Gm-Message-State: APjAAAVCTZyhmN/YOHjAYtjogt9d7n/4Mf9ts+96+rusamEchLo/Zn1b
 cWn/l5avAw4KKDVZsRorRm0yfVzdEmSABLZWQsY=
X-Google-Smtp-Source: APXvYqzWfFuhKbmUERTdGcJdW3c67oB9mNu6VFrWE+gvIQqF/Eu1ZOVPRsYnEW1AgL6eHBU/qlyCyWd6bdoUqv8GmeM=
X-Received: by 2002:a5d:8451:: with SMTP id w17mr28034282ior.226.1565455875504; 
 Sat, 10 Aug 2019 09:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190802144610.1229-1-freifunk@adrianschmutzler.de>
 <CANoib0Gt1WUtGGXaXp=iFu5ejPA1GkhevcquxFGVEHohJrwR4A@mail.gmail.com>
 <022601d54b95$30fec170$92fc4450$@adrianschmutzler.de>
 <CANoib0EKqHH5Xx6Gx5uUozvt3zNvuU6UvqLiE8Eaqjn1DtDQHQ@mail.gmail.com>
 <027101d54ba8$373cfb70$a5b6f250$@adrianschmutzler.de>
 <CANoib0H=v=H8wywMgEtoEZaVLOMQ9JKNfs3FWtWt996kiCxiiA@mail.gmail.com>
 <CANoib0FY9U+LhW4UE9effHuJJabX9QFnmHD0Vj6e_gdCEmzE-A@mail.gmail.com>
 <00b601d54f88$e50b7ea0$af227be0$@adrianschmutzler.de>
 <CANoib0FyuspUDhriPmy1U1=G73=Qtyauti6HkEN_JztEpCjjmQ@mail.gmail.com>
 <00fb01d54f9b$1956ecf0$4c04c6d0$@adrianschmutzler.de>
In-Reply-To: <00fb01d54f9b$1956ecf0$4c04c6d0$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Sat, 10 Aug 2019 19:51:04 +0300
Message-ID: <CANoib0HWYjaquo6DJ+3YFoFkUXBt3gcU=z8YwOhR9Fq2XD3w0w@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_095116_739809_DD422439 
X-CRM114-Status: UNSURE (   5.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: convert devices to
 interrupt-driven gpio-keys
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

> So should it remove the change for ath9k keys and only do the other ones at the moment?

That's a good question. I suggest to leave devices that HAVE some keys
attached to ath9k keys using 'gpio-keys-polled'.
It makes no sense to use both drivers.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
