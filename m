Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE858542F
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 21:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAETVGoSInZvZDbKP0y79wO3sQ3lx4d8hOyhGZN3Rp8=; b=XNpeXVLhyCB5Qf
	AAQ+1UC/T8dt1fTQPB6q+ySigQAumfz9Zb+VaCj8iXHsZ5nfTEL/yip3W/Nq/oiMRzID9DYrHOClY
	/avevgKw87xkJ9IiduOiwGHRB9m8icNwi/GTkGD8I5kDEZf+7oswYzwnBYo1Y3pSI+Ht+tfBWBekz
	sPulshCnJ+DWhmWN9TVmJ0BLkpFZ1BBlml4HO1zqlrpr+gBGL5VDVvKZsf6MY+A0kn840nn6okxHM
	0GBaoxb4bVutuM4h2wTabMG+gRfwNhEK1Cs2l5RLnsBICUmh+Rtig2iaGb7wliZunHD3Lk8Z7JGOv
	NzYNqo/94YGn7HYYxthg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvS5d-0008K9-S4; Wed, 07 Aug 2019 19:59:18 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvS5T-0008Jk-VM
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 19:59:09 +0000
Received: by mail-ot1-x341.google.com with SMTP id b7so59022988otl.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 12:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YO0saUxvYk0SPiSDtUeywhfbncqkmKWvkD5bBpjK4Rw=;
 b=KnO5YbRVrL/9+l8LkOqHbge+i2O3WIlrFFBoC3T0x0h4af2ZtBVwIechLu1D+m2UO8
 ncmJGf1G7HGqodgBFm0R5dDYygexCsjEeT+zac5hvWstQ0XODBaAcc5x5TLgLX/8a7K0
 jyHwRr5Sojp2MA53Tqdoefgl1zjpFssRFhbvQO0dMStGMkDARV0DidG03g7dNyjf8vDt
 9L3YBYDbFL26E1iocBZaK2jWKhkvRF9VGqN2BfiOaU2aNydAHKal0c/AN0HZmQlaspYY
 UFU65zOGMIyryRHX75YWnKHzHRZH3+jDFWagxzNnyNV/CaQb0AJQOXNoM67vYZ1XCXcH
 NB9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YO0saUxvYk0SPiSDtUeywhfbncqkmKWvkD5bBpjK4Rw=;
 b=ZwpYD8FA51iqhz+uK/CBDGLJ/38EtMXPSB2xWqtfyT89qpoDDS+Q8DJn041RihIVv3
 TPVWd9jE0zSA4XJQXULyWluveeSkMs5ZAvWIIIpUe5DR+wuy5+D++nTqpkBpuV5zDofM
 GnhErq5pxCSBWSXQkszUJBQLb9kPkyIpmjg1neM1ZHlVhvgh8YavlBze6FtAC+d/hWVQ
 1hLaVH/5x0azCLKM8vNA6av5A6s70V2ESDzG5V5BIparDJgRSRKFWmmQXb9ZfJU1L5Uf
 Veq5v4ClY2lct6LW4dzNc0BttYDxEjqMfJRE7F3UTLBRUpRtNP8Xtt3XQHu5OnDINRr5
 jWtg==
X-Gm-Message-State: APjAAAVZNH0dzi/S8E2P8FijPYFK7GcR8mdqNM7/UvUSVYZJGhqT9USt
 Wp1t59vBXavLt0Ga6iZryI23dHb1m6SVxFiRHcU=
X-Google-Smtp-Source: APXvYqwR0NYALwofWe3+tBlPSI7dTy3mU2Bss8OQUBhRwPJgZCgCeevXW5Yeo5qvvhXKnOblaGCevQ/N0H6Lua6NxAA=
X-Received: by 2002:a6b:c081:: with SMTP id
 q123mr10946524iof.210.1565207942276; 
 Wed, 07 Aug 2019 12:59:02 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
 <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
 <CANoib0GUUxSHCp5cRkjyiQykuRookSNdiVyJr4Bf0yE62fYSpw@mail.gmail.com>
 <02a201d54d51$4a49add0$dedd0970$@adrianschmutzler.de>
 <CANoib0Hk6buOR9tJ5F+3EXd2c-MCGiE0X=M+Yg7_R_+fP5zWdw@mail.gmail.com>
 <02d001d54d53$6218e280$264aa780$@adrianschmutzler.de>
 <CANoib0HHTDNcBTUTK91s7fef5m8s=TnVUhb2Jg8UELbBKNGeRw@mail.gmail.com>
 <CANoib0Eyc3hcLg6M54M=Srax-Q0M=vJ5Hczz9_kZG3807UcnbA@mail.gmail.com>
 <011f01d54d5a$2e2ec4b0$8a8c4e10$@adrianschmutzler.de>
In-Reply-To: <011f01d54d5a$2e2ec4b0$8a8c4e10$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 22:58:51 +0300
Message-ID: <CANoib0EFR0N3xYT-P1yneWMrmka7wAzLFA1Bk35wS4bLx5gj-g@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_125908_012719_9C5D87D7 
X-CRM114-Status: UNSURE (   5.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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

> Are you using recent master?
>
> DEVICE_MODEL is the way to go now.
Yes, I do.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
