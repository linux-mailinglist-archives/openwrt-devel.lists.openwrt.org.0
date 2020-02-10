Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E016C1571F5
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 10:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiaDDKSD9v7AAXx4w8FZhFnibpQxjwme1nBgC4iyZW0=; b=YWY2KI2yqou8BB
	7XxCGVN7BtpnY6ckSruaGXcya9rmHtJG37nMWTtvV6//DlO9V2tRCi18HQ+bayLMqAKtvAHXNBxDK
	Q022PEZetPUZ8JHH8OV8QtpKBRpO0sDbt0k0k+wonwlIK6ZtzTcDwOFJp2FjxuFMwmIlTPBed9Gy6
	UHI90ztaZWsO7olVQe5+Qq/NWjskcTgAvmjCRu4vfjUJZdWckUtE6DXYLWQDwrZ/CsJcpeqc5fsPX
	WekuDJmyTJ1Zft92OKdsyByMgJLWxghi19vbt1KaYfCrjq1S4XEiPKFeggialIoJtaidqo6Y49riD
	bwEP0AWc0YTKO10J0vgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15cI-0004Zz-95; Mon, 10 Feb 2020 09:44:34 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15c8-0004Ze-UF
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 09:44:26 +0000
Received: by mail-vs1-xe41.google.com with SMTP id k188so3670949vsc.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 10 Feb 2020 01:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=G8zhG/i74/kOCe23yQ/kKqcWbBIeBIjH6jQA2085hgo=;
 b=DSRPNDH3rPq5J77dum/NnaXa2mqoztfl+rrlXB+yPhDSifR/o2z9HwJVzHqKXGkNw3
 Cq0gBqQNYX//1le2foSbvbeLpboS8vzfIbaT9Rtd0tgP0Eqx2eXUHCWaftvhjRYy+oSO
 C7hfJ7sp3WMyUnX3/qZs3hNp0zT1ppaBTdPOwa85E5wbVvQBm1LUtCYieNxwqX/gkC/K
 9bRTkaO86/eRllYz0XNeUog66IWGk99QV+bqQoZTsFoEqjuqnRtPbsvKoxCicPscbwXm
 49aKoyuX676dmFoM78ttyt9Lvm9xEcpQwaHuPDVRuFIStpw9nXrBnAQIspjVuRBbljim
 iP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=G8zhG/i74/kOCe23yQ/kKqcWbBIeBIjH6jQA2085hgo=;
 b=p2QRF2pV7RMckLHqrTLwbLOHEJ10vB5tL9mNl+/Iad9RBdEq/ulcEANiYYLxZI8sTb
 FT4QBhXFvjA2+8T/fKCUN+wvqe+1zYzG+P3TnXZ0nYU8h6lM3z2e4cgADKqnBtm47fFn
 hd8Fw1ib3dPxjwi/zUnJZN7C3fysx775wkNeM9MPWFJ/uBgWm3xFEtG7peFUG63i8r50
 Q9yGNQqTQ3m7ODb9mgYuJ8Ty0N/Dk4Abu2X09qiH+cstzWAHzlsthmeVMIubR2/dTTVB
 /sU4imKeUYcupECrZDyWvAeCI09lI0NHOu4uLAqD8MWSFsW6Of4/Wzqt2PitzmjDcKVz
 Sm5Q==
X-Gm-Message-State: APjAAAW7cpFKVoY9KdIBwtaWNDEcrwAaKxqxSL3ZXg7zibcuGePlZey7
 9PFh90a823pVxrt8EvF2AIwPlr56hEeCTPkTYnwpE+A=
X-Google-Smtp-Source: APXvYqzDRSWjLq95oL3CZ+u3cOUcB4oATDCdJVHRtMCkPOtQNfUYOTkmvX5f15/WpXh4Qax34B8mNSgULynNDUo9EIY=
X-Received: by 2002:a05:6102:3c2:: with SMTP id
 n2mr5560826vsq.172.1581327863253; 
 Mon, 10 Feb 2020 01:44:23 -0800 (PST)
MIME-Version: 1.0
References: <20200130200345.31741-1-rsalvaterra@gmail.com>
 <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
In-Reply-To: <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Mon, 10 Feb 2020 09:44:12 +0000
Message-ID: <CALjTZvZwq6AeTSYT700vw8y4N-N3h489d47n-VLyfEXTdpuv-A@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_014424_972348_EAD38CBC 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread
 entropy collection for AR5008 and AR9002 PHYs.
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 31 Jan 2020 at 08:12, Felix Fietkau <nbd@nbd.name> wrote:
>
> For at least AR5008 and AR9002, but probably also for AR9003 I would
> like to keep the behavior of collecting entropy only once at driver
> initialization.
> Last time I worked on this I noticed that on several chips, sampling
> entropy during normal operation caused stability issues that were hard
> to pin down but quite noticeable.
> I think the benefit of continuous entropy collection is simply not worth
> the extra cost of potential stability issues and debugging time.
>
> - Felix

Hi again, Felix,

FWIW, this patch has just survived a whole weekend of rngtest <
/dev/random on a Buffalo WZR-HP-AG300H (dual AR9002). Output follows:

root@AP157427:~# rngtest < /dev/random
rngtest 6.6
Copyright (c) 2004 by Henrique de Moraes Holschuh
This is free software; see the source for copying conditions.  There
is NO warranty; not even for MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.

rngtest: starting FIPS tests...
^Crngtest: bits received from input: 224241980032
rngtest: FIPS 140-2 successes: 11203058
rngtest: FIPS 140-2 failures: 9041
rngtest: FIPS 140-2(2001-10-10) Monobit: 1165
rngtest: FIPS 140-2(2001-10-10) Poker: 1175
rngtest: FIPS 140-2(2001-10-10) Runs: 3340
rngtest: FIPS 140-2(2001-10-10) Long run: 3405
rngtest: FIPS 140-2(2001-10-10) Continuous run: 0
rngtest: input channel speed: (min=165.459; avg=1025.932; max=1093.147)Kibits/s
rngtest: FIPS tests speed: (min=503.707; avg=14584.165; max=14920.741)Kibits/s
rngtest: Program run time: 228508694816 microseconds

Best regards,
Rui

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
