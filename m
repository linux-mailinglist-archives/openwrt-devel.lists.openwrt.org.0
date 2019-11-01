Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8C7EC8DA
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 20:07:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLTF/uNBqeLA6nCGDQfzvjv122C8OSFSUiJP8nyTFps=; b=ZafXFP97amT+Nr
	iIfjrESt/fVVXyAtVBEBmGJb532kRpA7ndLoe2kxogKwz1M6yACz/Kn3ZQddep8pePKjhfC86dORq
	vOR4N9Qf97kbUARQo8sBmaarZAGHOnQZvc59D2Wb3eZ54I4qad2NGsbe4aEfo56zfsS7zGujT0mpk
	R3w7ZGnUTd3p5/yOlBFYUtBWBPl+wZUaVBIwcce2PpT/Jd8mOEv65lnF0V0YaKEcQh+fl3m6lzkiU
	71jZcqEusY0xE464rbmQbxG84A9/g8KKI4S/NhBdXfPxF6cp6SCNE6usPRX+R3O68BTiSSe9uaoix
	/HoIEoThj9KM/t2PQllg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQcGE-0000us-Kg; Fri, 01 Nov 2019 19:07:02 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQcG5-0000uM-U8
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 19:06:55 +0000
Received: by mail-ot1-x344.google.com with SMTP id 89so9175501oth.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 12:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=egfV+33fp8LgbbxJkXpO6B9+CPHrnB60m9+LWvNRiB8=;
 b=Q9EHbTVL5b4nZpmpIIKLAEj2Zf4mKFI10Es1pMvDVMUWcOX/T+rc7DE4xAZK9K4IZo
 osHObte52VIyIshBF9iLPxGR7yXsXR1mfz9LiEMzkuCRQmSnQ1nwLF+SF+PcygH3Uzsi
 BxS+rD++Hb0MC7x4RFOYXCoD3Zpnp2KkMYOwjDxHJlGOZOUggmy/AU1u96U3t0YZ9bzR
 iifwG4UNCeGoG6HX3f2R5us1prQ6FCP0UUgAHA+78WMCWmvS/5C6Cjjy1D9ZUmYjjVfy
 8zd2nrIAo8O80nvk2eatPShv8SAPkR7POIp9nCJFPqPntUn7aas0sDu0DfSpkOvD1QWQ
 5JQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=egfV+33fp8LgbbxJkXpO6B9+CPHrnB60m9+LWvNRiB8=;
 b=JOqg1livHo/Mstfh9Sj4Rg+SpIH87SihCABXwyT/4jSMP1dqEfXo7gLaQSCKkM9A+B
 29tZtM8yubU7VXeWgAuLcRuHekurNTacuYiuLciSL+mBgXufNnlQkme6OZvYisRQ7T7k
 W5n/FR/zx7sp5I3jlDxsyvTlYtrIsY3Q90PUa2AhEQYe8J1dO39gOLPrUj+yoR4pJWuT
 mbKeGbgELlKkEmQDSM/Ug8oyzxZr2V0zo7r7819otHqKMkbCGYYqk/T8bxFzZy6URZ5D
 d5usndm+F6jd8ZauYA6BQ/uMGvz7z5qUgd1o1wTrz83WCYojbsMeoJj6Dew5dOFgU749
 /LcQ==
X-Gm-Message-State: APjAAAX07Z1Fnn3lqT/VVdg+9zZAhRMdyV1j2srsOWqtus3yvNiw4XgL
 ydkXg/VBBm80R8lXBGRlTJW1v1NJbhEROqSBmWiECMDd
X-Google-Smtp-Source: APXvYqyZdcOv/FLsA/DwozEOPEgYCpB2ixdLl5TuaEnXOSA6atnX7Az7YuhVqmky0gqpSENUs753dMMyrtRdLzZu+pI=
X-Received: by 2002:a9d:313:: with SMTP id 19mr10027137otv.186.1572635212381; 
 Fri, 01 Nov 2019 12:06:52 -0700 (PDT)
MIME-Version: 1.0
References: <20191101091829.GA16215@darth.lan>
 <fc2f29ad-d8ec-a28b-930e-7c2dc85d7906@wwsnet.net>
In-Reply-To: <fc2f29ad-d8ec-a28b-930e-7c2dc85d7906@wwsnet.net>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 1 Nov 2019 12:06:39 -0700
Message-ID: <CAKxU2N8gc-=S6VbeOQ5pUWmXiZyB6JQsC5Hb4PHq_HTMGVzrVQ@mail.gmail.com>
To: Jo-Philipp Wich <jo@mein.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_120653_993031_D237EA43 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] rules.mk: remove
 "$(STAGING_DIR)/include"
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

On Fri, Nov 1, 2019 at 2:21 AM Jo-Philipp Wich <jo@mein.io> wrote:
>
> Hi,
>
> [...]
>
> > Removing this directory from TARGET_CPPFLAGS will cut down the log noise
> > a bit. Not only will CPPFLAGS be shorter, there will be less warnings
> > set off by "-Wmissing-include-dirs" (or even failures when paired with
> > "-Werror"). After all the directory does not even _exist_ in the SDKs,
> > which are used on the build bots when building packages (see [1] and
> > [2]).
Would it also make sense to remove $(STAGING_DIR)/lib ? Locally, it
seems libpam gets installed there (probably a bug).
>
> [...]
>
> > Signed-off-by: Sebastian Kemper <sebastian_ml@gmx.net>
>
> Acked-by: Jo-Philipp Wich <jo@mein.io>
>
>
> I wanted to look into this for a long time but never had the motivation
> to actually do comprehensive tests of the impacts of the removal.
>
> So, thanks for looking into that - its fine from my side.
>
> ~ Jo
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
