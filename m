Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA7996F01
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 03:42:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=am1LPj9xj9jw/0mbvXOaNJo9PQteBDXGufANIRH0Zew=; b=Ui9xVMDne0LCVJ
	waB3/aqNjDiT2xgGct788tfcmlcoNW5mNDbbO0gPlNOy1FMLjMarrbXEKaoef6TneJZ3/FcyAiPOL
	0QKF4fPNbN2aU+lPGUwkv+STXO2Mb8YOoqTELqcknHua8Cu1MVFuyEaeJgavlha7uIYjxg+g3fCwJ
	nDV37MKTlhHY40orMjkMlUP3FQ2o8doJo7ezLUh35hE3D+D2YkfGv1j7QqchEmDi3CIfq0h1fzn+H
	4+xo62lxW2XdyaYSS4MgEQDbyFgNkS6QyXqColNrivIzDVzdah8QkkRXOyDpIy1Ew/A2Nl01sxKCd
	3WGhne4apIBdSlvcLOkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FdF-0008Up-OF; Wed, 21 Aug 2019 01:41:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Fd9-0008UW-NW
 for openwrt-devel@lists.openwrt.org; Wed, 21 Aug 2019 01:41:44 +0000
Received: by mail-lj1-x242.google.com with SMTP id x18so596586ljh.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 18:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TgaS1q57eI7rF6qJr4hxL8huG7ycuW4qXj+FjksuJQo=;
 b=YOjxIAAFHUOUgbzDJL//OT6KTtJabwOyaiOG7xNQ3L69dJvtm9wJmfQY+c7k1Oj8sx
 MERTJb2OyGSzmzCY9n8LKIc8+cmryvnKxEHPko0oV16INDxJVkPcNA8hpN4egAswYNZL
 XNgYLJwyahB7kNW0DBaIxj6y+/novBZZzBZ0VMBBfYw+DTayIheiz+l65Uyn7sCsPVtL
 EN1ocOMJeHS8+j6SKGyFQjkQxovua/1Wb8Vwcflp0cn4I31jQXXQuqca1DI4//sTMRJS
 a1lx5USjM4/6Roo1aTEyo+rcH3gny5qL1qC9mTOMgPg6t4/V9snJp7hSYG8dI4C02Z4E
 s3rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TgaS1q57eI7rF6qJr4hxL8huG7ycuW4qXj+FjksuJQo=;
 b=G/jViRFSO53z/O89EqAw855K9M6bAzEeZ85efzSvCrK5M2g1CQ9iL4V1cPYRdybl/s
 detX5pXFodCV7w/2YQuyDkOGooe+Lz8djkY8AqdfhjSgEkYtY3XzTnici/78KJyrHfKz
 chxZq1tbV8q9gy19Uyf5jQgdu4wFsaZ+gl0tdMtzzguGc2Oz2FID1BJPlYxGdM0/0oG3
 Dy4fIJ+Lk3Y9s/cDrNCl0K1RkcNXlF8wwSSkRoQAdZp9xYHF00EQkI/BbRSlxTuexcJB
 IT5rYcpcNkjp6m0RRx2yDxMYWaiYCtgomVWcHQsXyQN0UtxPCMSDHKuGV45IqnJG04Vi
 lCiA==
X-Gm-Message-State: APjAAAXmZs68nBl6FVCqb7uSk/LNmKQ1d1IM3B0QWkL2YeaGyDKwU5a4
 nE/fjtuQCSmDnE1uDQlPhdfd+g8t8Jvi4ORA2fk=
X-Google-Smtp-Source: APXvYqxB7iN+2Zegvg6q3JMT8mXNykF49gOehK3X+/Lxi/xFmJMpPcwgJKyLMBQ2G+qNqZi6ah7YywXWZ6BNZc8Cc/k=
X-Received: by 2002:a2e:894d:: with SMTP id b13mr1199288ljk.38.1566351701870; 
 Tue, 20 Aug 2019 18:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190820135159.15632-1-yszhou4tech@gmail.com>
 <alpine.LNX.2.21.99999.352.1908202151110.8021@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1908202151110.8021@localhost.localdomain>
From: Yousong Zhou <yszhou4tech@gmail.com>
Date: Wed, 21 Aug 2019 09:41:30 +0800
Message-ID: <CAECwjAjqWJt0zxJu2jEFSdO5BrnDLKTO+Hv1+--s_uyDYr5_pA@mail.gmail.com>
To: Enrico Mioso <mrkiko.rs@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_184143_792996_0853F024 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: add support for Northbound
 Networks Zodiac GX
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Paul Zanna <paul@northboundnetworks.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, 21 Aug 2019 at 03:52, Enrico Mioso <mrkiko.rs@gmail.com> wrote:
>
> Hello,
> thank you for your work guys! It's very good to see vendors helping out in open-sourcing firmware / support for their devices.
> Just a single / simple question: does the device provide for any recovery procedure?
> If so, may you list them in your commit?
> Thanks!!
>
> Enrico
>

I plan to create a wiki page for this device to record all my
findings.  The commit message could be too verbose for that.

The device does have usb-ttl serial pins populated and the oem u-boot
allows tftp get firmware then write to flash.  There are pin
definition, timing, default params etc.  A lot details, but it works
quite well.

Regards,
                yousong

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
