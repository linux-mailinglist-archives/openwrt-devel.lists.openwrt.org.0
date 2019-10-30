Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C04E9F09
	for <lists+openwrt-devel@lfdr.de>; Wed, 30 Oct 2019 16:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WPGD4OWOp6OL+rr2Zwo+mv/bo5HlU57vtgNkJn3Xns=; b=N0TJz4sxUg+nWy
	dfSafKfRH4LfJ5fiamJrosmIGasOuWLfCz/fNIG3919U24cK+qW52smQGGY2pqT9EJI9uTDbdPijO
	q6xN2rtqH9o4nOmLcKLR61FpIhjI46IdqsXo3JWzQh4+zyjTY3/7gsqABnl8pGut/1br9LSxUilIK
	1sV3h+0A9VAV9ww9OHbuIEsZLU5lKLJAEAZ/wHlNLjjvJZzsoWDgnqhk/wOuIvB7vgUAOKeQfUjnC
	UPA1wxWAT7TQQ5KQ9SdGPrg8iVWjjs1z9LkKhymSel+ys52+5RwDwPUlarQ3GbzkDPdTx2kYdSIL9
	PXQjrY1qmS0tVaOrAP+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPpwy-000236-Hd; Wed, 30 Oct 2019 15:31:56 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPpv7-00086g-BV
 for openwrt-devel@lists.openwrt.org; Wed, 30 Oct 2019 15:30:02 +0000
Received: by mail-ot1-x335.google.com with SMTP id u13so2494895ote.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 30 Oct 2019 08:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=r4FW/XTAAwViHBpCV8YPfdNO1Rwgyg9i6pv0c7+YB+M=;
 b=dvAMAWj7iorpgNUfKkvXLD+zsubaWdlOTnxdyh2UDsqS4OaQVMdZx1aLuP4Ne7z4vS
 zCGAYsACKym86CLEVDFDjGCOxND2ggI1BTv6Rg5oHeOEE/J8EkWD48Vu0P77ivw8kjsk
 vGIT3428oije0ZmSPzbtzyt2HQyv3Kcmd8xSZZYkexRN/1X+hFXyMp0Ifaj4hzXjDIvz
 1XrkKZ456h+KaNlqojhyqJOfU7T0JTTkXHedCSRvXoLCRhRVvOtsbe1d25m+V5c34wJb
 3vkorw5/DKGmPNLd3fCycqfzoKmd943zOsn7UprZoL0zrAq1G4Qwi/E1ESOWT6UHmlHJ
 cuhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=r4FW/XTAAwViHBpCV8YPfdNO1Rwgyg9i6pv0c7+YB+M=;
 b=CjCFP1Jva9fqSI1q29STUznR4xHLnC5m5Zt1A1filYlB9oZqfdEHyGZr8M5QR/WHNU
 EBv090K/DYA+wVkjcOaEv5F2gBoenebmhyupcmU4PzHUpqwmLVHq0Hor3d+gmekqEOuZ
 EjYFMTvhIR2pvm+bDgeJcwLz06M6qH8SFSUYJS8PCMFgVn151DgpY3tPES8L0O3d8J4b
 J6kuR+b+SIF80Q3515kYb2uUdDP6hUJ69qDz0ovQXqlH4cSG2DZRM995WrvzXk5dkOqZ
 zR9ANzzy59Y6kKKE/S6ypTwsUpFjrPv8lG3W8EJm6cPWq7zjYbTRJ8PW3AXOypP3efwo
 nX/A==
X-Gm-Message-State: APjAAAUWIj8n4OQ0aMRSbI7nX7HEg3XbnEPK1w84OO1qq+De5+Dh+ARQ
 s33OcfuNoyuP4Tu0Aofs4lGFkHRdTQdtcHFG7gg=
X-Google-Smtp-Source: APXvYqynGHvlsi/cFWPk+67kutusdoBN7ifHv4K4NOUY++XQrB3ylcZtbrzTLt4gxQJk0/WDDEQRA/+eVGaCzR/ERQA=
X-Received: by 2002:a05:6830:1d7c:: with SMTP id
 l28mr388480oti.63.1572449399047; 
 Wed, 30 Oct 2019 08:29:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:7511:0:0:0:0:0 with HTTP; Wed, 30 Oct 2019 08:29:58
 -0700 (PDT)
In-Reply-To: <00e001d58f33$2a793bf0$7f6bb3d0$@adrianschmutzler.de>
References: <00b501d58f2e$a14292e0$e3c7b8a0$@adrianschmutzler.de>
 <CANoib0G2ViuUjdkE_hWE4ETsLr4=XUF6sPoM_gFMEKOSw4Dccg@mail.gmail.com>
 <00e001d58f33$2a793bf0$7f6bb3d0$@adrianschmutzler.de>
From: Tom Psyborg <pozega.tomislav@gmail.com>
Date: Wed, 30 Oct 2019 16:29:58 +0100
Message-ID: <CAKR_QVJnDMHdV+JjMRa1n7H9PSfH8x334vkpsRxPD2me2JCYqw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_083001_421982_11D9C165 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:335 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pozega.tomislav[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath79/qca9533rev2: Help needed on missing GPIO
 on ath9k-phy0
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

What about ar9533 devices on ath79 that do have working wifi, is that
gpio present there?
As far as I understand the idea was to use alias gpio chip (starting
from 494) on ath79 instead of generic gpio (0-31) but I might be wrong
about this.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
