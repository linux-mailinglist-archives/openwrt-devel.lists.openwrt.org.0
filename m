Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DDC11E0BD
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 10:29:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwOcF6TDa5BFnwZLm7CV8lpiA/oDCQP7zXLULz7yRqY=; b=L1HrYzbfblavt+
	u5D4Nl3Zei4c1GTR6TJHTckBRLUYT04zNuxqMnrnSi9j3ejbshGTjfvp2ck3CGNWnJAeL+EdM3VIV
	9DO5wtS5us8avXO3T0sz0fgu27LozV1NgeHKk671ox7uqUyob3AbDOgRanayGJl1FZJHKzrO0Ba+a
	a8WDxTK8QQ9yasIZrL/MinkOydZNxoHgqCcVM9U0k6r1tBi8XSYnw0JZHV+MU3JMB5pMvQ6Kctlyj
	2NK2aVm2uGI4eXWfSRHzLlIDG3a2OtzHaDsGIBtrVnvMlvD9+gTRk4+4dIBkrFtshTHfxtukQC3Qw
	bbhi475b+OZWPSBTLAhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifhGJ-0007Xj-0F; Fri, 13 Dec 2019 09:29:27 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifhG4-0007SF-6L
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 09:29:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id i23so1432975lfo.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 01:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DDBriNldhD2lKbJZ98L+w4wg1DsYes658Pn4Lpw+lJg=;
 b=pEpY6qx4KkjK70UNlagcV4AuxmmiQFO2uVz597F9abBpntWANoIi4++qFP1HLQ5FiI
 rlxz/420hPEOXxfzxWge1v+2qD7jN+CFVupXUspa5JW7rTnu82HI+EY10YfYule3n8Wu
 94Nnbw2s5zxCzlkgpTpM//9qqxyuC7rUSg8mkaFIlvEbGs+lrHyRk+T95lAE3b5hqCHY
 oZmeylXtFnIKCFOU/gsceKFEyh8gBsx6Cid1cxE3zXvAI2B3ADkte1rnDuJc8AItgGkS
 1wC0ByEpLd8GBMO5HMws/kLhAGEChRuyx7NXpqbLbsFi9zfS5RVs69wD7A+BTrP2MY9t
 Z7rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DDBriNldhD2lKbJZ98L+w4wg1DsYes658Pn4Lpw+lJg=;
 b=eJ0sGtVT7G16dYveqGm4gpkAfVjl9gIARdfjS+7QA8cW2+U50UzfmzGfZXfv/Q54fO
 B5zR7dCTa71axL2UDhkbb5FJtfEX6QYW86JMzeeZkt+iqae4TUSGe66SpSZIHE1z/hUG
 V68AIn4zt7ke5gK0LK3z4Cy42gkTuAEscIaZIRfiOLy/jWO63eLCytslB2imhmFNt/tS
 arFTd/fIkgqUm+pzdvjTGf9jak97Ooejhjxs+U8fj1Sq6dWLrqgrKzecclm13g5RPOUR
 OgM4xVSxB7Ryk9AnpBumixkRhvA1mdMe3VAoO1gfBENVC5l54V1JqRA/vyYOkI1ICJb4
 wLpw==
X-Gm-Message-State: APjAAAVqYhPAJHtf1bhKUY+NXBYIhiyVISjrXA9U6xSnhCXssOFwRcE8
 yDaP6020F1Z7S6tLLkFEmz2BThkaOYms1Y+3H7jdr6kk
X-Google-Smtp-Source: APXvYqw92ijQJzvYeqJEuO1FPkDrhCo4Y2jcRaclm+cnNsIIrxgLQCVs8wLZAB1hO8GoyH8GswMarRO+c69a5f/w6pk=
X-Received: by 2002:a19:7b1a:: with SMTP id w26mr7781535lfc.17.1576229350366; 
 Fri, 13 Dec 2019 01:29:10 -0800 (PST)
MIME-Version: 1.0
References: <20191213070559.50319-1-yszhou4tech@gmail.com>
 <cd162aac-2d45-08a9-25d8-f4b749850cde@wwsnet.net>
In-Reply-To: <cd162aac-2d45-08a9-25d8-f4b749850cde@wwsnet.net>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Fri, 13 Dec 2019 17:28:58 +0800
Message-ID: <CAECwjAhoTDX-Z4v-=mr5aO0dazSJPcwMHV+bjX7JAPYYNOPyEQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_012912_244978_71AB1FE8 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] zones: enforce forward policy with
 zone_NAME_src_POLICY
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

On Fri, 13 Dec 2019 at 16:58, Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi,
>
> per definition, zone forward policies were only ever meant to apply to
> traffic between interfaces within the same zone *not* to traffic
> anywhere else.
>
> Your patch would break that assumption as far as I can see.
>
> ~ Jo

I see.  I always thought that wan forward policy being REJECT by
default was for not forwarding traffic _from_ wan.  Hah,
embarrassing...  Please just ignore this one and take over FS#2525
from here.

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
