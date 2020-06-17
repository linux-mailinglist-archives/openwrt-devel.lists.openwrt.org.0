Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150E71FD621
	for <lists+openwrt-devel@lfdr.de>; Wed, 17 Jun 2020 22:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsnam9rJNk/kKb8JB09OWIfgDaQLfWuyghCgoLKrJ+w=; b=hSy2Zr7EQhAeSI
	I5QghMKxJRJ3EzL1y5E1EG7StBzu1Xo9JEyiAV1kFJ+3bqPevbFwwFmm9UiOLxi4Ntajgetx6Exq3
	+fky+j5b3yDLiLpTUydFFv0SVmROmZkCyQueY4cHJj1gAbgA52D2uH+XWh7pjqtbbsZG+FFM18skw
	RH6JrwVrecuLsHvwl6zPtLMZ9gh/LMUMQ0ALYJHIsjxZnU4JAFjx59zL4Qg9QToDG4NmC0XZYkUF+
	60UPxYFfJDVxB2tf6Y8DIWfEsxyi5gB/8kCV8LrROKTO0V7+3je6gYCfqFG5qrF0XlNDEfuXppXGI
	zbZmXXmv0VyUDMTpdVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlel6-0002zv-2N; Wed, 17 Jun 2020 20:34:08 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlekz-0002zS-MS
 for openwrt-devel@lists.openwrt.org; Wed, 17 Jun 2020 20:34:03 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 45256bfc
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 17 Jun 2020 20:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=ryQ+H8gYesdlFh8EWPBK6nb53RI=; b=N3Djmr
 cItMfohA7EO514+IxXGAQ71CQvAmIT2corQXFR3sio8iw6vjCS9I6LAOeXnTAYBG
 IO75fbN28ZI0cR9Lp+Bufh7hza9178Z4XZ1PmoaIly5+CT3ZV9ig/2H2xISzj7x8
 kAB1o0XP9q7jiIFArMp670PY3U7sTDNsWjSJR4Wz7AN98O1ixj6wPC3hupIwLTcv
 bRKKgZryLpXKkhY2CiP5zcR8xzbu8mNnmLjmfCiQ1XM7VdWZwpgGYLdRd2UfhALz
 7xh8VhKK8gLdwg3YjFUdr3bWwwdrITsneTVbHpxRXPdj1IrbCXikAvCPkg4qoXAC
 H9ZVkOCjMoP8Nb2g==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 4b0306a0
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 17 Jun 2020 20:15:52 +0000 (UTC)
Received: by mail-il1-f172.google.com with SMTP id z2so3654361ilq.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 17 Jun 2020 13:34:00 -0700 (PDT)
X-Gm-Message-State: AOAM533GXH1IZoA3CJxo89oQFS5x7EaCcfDoO4YAdjnHfgCj3wYdJeAv
 xCrYVwnU4mzOWqx+1SLrA2GoObLEupidxDMmBqc=
X-Google-Smtp-Source: ABdhPJx1N9qQX9r6pETSPNUcqfNW+NCC1K1gZhZ1569jA0ED5Ao3R+PhEF3PJx1jxaE6NNQVRS/GZxEF+XzwdFDf3a0=
X-Received: by 2002:a92:cf4d:: with SMTP id c13mr674273ilr.207.1592426040119; 
 Wed, 17 Jun 2020 13:34:00 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
 <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
 <CALjTZvbtjVwpyV+AMX4htssTbwTHV45mQeokUr952D_GbtFPvw@mail.gmail.com>
 <CALjTZvZRerzWqaqhY2U=m44n5taLEsY99uEt2=ZNCe27=LYbLA@mail.gmail.com>
 <CAHmME9otC1mOqR2tLB55BVQQpNPvCMUGa1E4jfMYYXNp6_31BA@mail.gmail.com>
 <CALjTZvZ4wqZZ7_Fk-YHaxT9uuWnS4n9dLm4ZXSy1UM3riv+NuQ@mail.gmail.com>
 <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
In-Reply-To: <CAHmME9qWrBTCsBr7s6oLD0zuBMzZUD2OV3s-tgDwV0W7bb9Utw@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 17 Jun 2020 14:33:49 -0600
X-Gmail-Original-Message-ID: <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
Message-ID: <CAHmME9p51XvLEZ7QbDreEXym34S4XZZaRotAv4aRiT5D4Pz3XA@mail.gmail.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_133401_872715_4734AF14 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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

So, some more research: it looks like the R_ARM_THM_JUMP11 symbol is
actually wg_packet_send_staged_packets, a boring C function with
nothing fancy about it. That github issue you pointed to suggested
that it might have something to do with complex crypto functions, but
it looks like that's not the case. wg_packet_send_staged_packets is
plain old boring C.

But there is one interesting thing about
wg_packet_send_staged_packets: it's defined in send.c, and called from
send.c, receive.c, device.c, and netlink.c -- four places. What I
suspect is happening is that the linker can't quite figure out how to
order the functions in the final executable so that the
wg_packet_send_staged_packets definition is sufficiently close to all
of its call sites, so it then needs to add that extra trampoline
midway to get to it. Stupid linker. I'm playing now if there's some
manual reordering I can do in the build system so that this isn't a
problem, but I'm not very optimistic that I'll succeed.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
