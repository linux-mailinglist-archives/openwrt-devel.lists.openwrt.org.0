Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1C91337D5
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Jan 2020 01:12:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYSFR1mRF9yTLOL+ns1oMqG6aVrQNvxyEhad3n3L8dE=; b=NLiuauG2yrgznR
	nKA08Ql31EJmsS+D234f0ghNzYbq14lwlV5ig+h/NcTTxfHZM93D9KplLEYbqex2g/AlUiIuEPcLZ
	GqoPLMEW8oNN9Xi+VMh9Wzop82wVAQjbuQWpAJVtErgDwuklNks7BNPyzJqVwDjEhMtfXasuJ8t2l
	hss+XT99T0QIoEIdRVKUEBJ1CWtFG5AY3J/MorK3oKrwkE4/oXDZdoG2cQn++faAeFUX7fkpRZgfx
	9PVcru+tqX+0ZN7yzFkuoyFpM0wjwRBZ0f2dAZQN/dTdm62dl+S58f5k+QMBcgMQEAkR9nBLVi6jG
	XECwEoFbkSvybHCuZCtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioyx5-0003Ud-0E; Wed, 08 Jan 2020 00:11:59 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioywy-0003UH-TT
 for openwrt-devel@lists.openwrt.org; Wed, 08 Jan 2020 00:11:54 +0000
Received: by mail-qk1-x741.google.com with SMTP id c17so1132035qkg.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Jan 2020 16:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5ZT2DxsAsE/2iVYSyfVNKc2zaya31YqmqcRrz6UL9CY=;
 b=vKuTWtS9AQUQhfj66U0iB0Oeb/HOO5Pckx4EA5NDbQRN9F8h7ouYkFRSLv0G3P4mi+
 3MDHM9pVX9tvflza7FzX3mLuJsNHKTd2GBLlnHppfTZqGaxuV97GTGp3vHDO416a8dX2
 Cp4+HySIA8wN1adTskLN+D2TrB+1nFrgteA00S/SxGzJF+MWK54rp7U0bhYsZxK7Dio7
 qXf57+n2iYDZC7E4++4Yi3Od0dtO3Ykg7QpwVYwtLP7PBl/6DEJwEJPgQDjDrxNiNUGD
 6g5ZycJaOtW6hrpT2KsX5n/Mq/T//nvP7PbxZwPTomG6StTjR0DwI/mbTbYV8/Vq81WX
 uuGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5ZT2DxsAsE/2iVYSyfVNKc2zaya31YqmqcRrz6UL9CY=;
 b=tYCCJGxgOeWf1m6UPOt+SeDoZ0Z3w+En303x+0jbhZlQkJON8r3nPjjt0Zcffrr/Ih
 i79N80g5W5gt+FqRyCPtdyDapEbP2rfOLXpM9Ik0cj77QvFX+V7lUaBhI11SpysYg3Jj
 gy6vdqkTkdHT71pKQB8tTNJU/vTgHV6SOrsIb3LKEXoHDZ1eHEot04/Ltbj23+wt1nfG
 cW5aCgSE734KwL9JsGkoZ/vJAF93zZVxhKVgrkU8nRXyg+CIKKy3auwLF/C02wlFuvi6
 U53U9MugBb6/OFSD8lBN7Jlr9Qe4MDBftjQr+RQu5/Am0qUh+CH22H5tVApK+7hJ8z1c
 Fu4w==
X-Gm-Message-State: APjAAAXHwmo6ZkKVyd5sIGd0JUg/jVPftI7SkaXLe04Lh2P3GP3NYKGT
 aWWpkskzFELQvGcwWlsVSl8oZ6DZoQ69YOso2TrTxA==
X-Google-Smtp-Source: APXvYqzaMiYSU2FEGzmuGtHUOcoqPLWJiNokJqiDox5QiI8z9OL2pldhSA8UdqhJO6nAqGVCSHbAkY4GXY+zSSEB2OM=
X-Received: by 2002:a37:a00b:: with SMTP id j11mr1922026qke.268.1578442309943; 
 Tue, 07 Jan 2020 16:11:49 -0800 (PST)
MIME-Version: 1.0
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <58c97e81-f7bc-f12b-9f1e-d59a086fafc7@hauke-m.de>
 <CAPxccB2+SKHwpZ53pvJZGzCXxBvpMokzGoK-ZzkCA8CnJfLm8Q@mail.gmail.com>
 <29aceaca-e9af-8327-7e52-dbed8d550d32@hauke-m.de>
 <CAPxccB3mcM1JKJ5FG38GPpOB7wwZ6DfeisTwZbK+F4z11rAG1w@mail.gmail.com>
 <774d4f2a-bec8-4f92-e1a2-a1ca24e1a3bd@hauke-m.de>
In-Reply-To: <774d4f2a-bec8-4f92-e1a2-a1ca24e1a3bd@hauke-m.de>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Tue, 7 Jan 2020 21:11:17 -0300
Message-ID: <CAPxccB0YuD=hZGcTQaJ6gt1tD8wP92+rPshAh-kKUGk2p85ZKg@mail.gmail.com>
To: Hauke Mehrtens <hauke@hauke-m.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_161152_977291_7A26F69E 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: Jo-Philipp Wich <jow@openwrt.org>,
 LEDE Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jan 7, 2020 at 6:42 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
>
> On 1/7/20 9:09 PM, Eneas Queiroz wrote:
> > On Mon, Jan 6, 2020 at 1:59 PM Hauke Mehrtens <hauke@hauke-m.de> wrote:
> >>
> >> I cherry-picked it, but WPA3 still does not work for me.
> >>
> >> Hauke
> >
> > TLDR: WPA3 support with wolfssl is still not ideal.
> >
> > WPA3 success was reported to me here:
> > https://forum.openwrt.org/t/wpa3-wolfssl-fail-openssl-success/50161/7
> >
> > Another user reports that it "feels a bit wonky with WolfSSL 4.3.0",
> > that it takes several tries to connect to the network with a Nokia
> > 8.1, and his laptop does not connect at all.
> >
> > I'm not using WPA3, and haven't got around to see if I can test this
> > myself.  I know WolfSSL deliberately fails to perform some actions
> > that it deems insecure, while openssl succeeds.  I've tried to spot
> > some of these situations just by looking at the hostapd code, but I
> > couldn't find anything extremely obvious.  Judging by the partial
> > success, it may not be the case.  I'm short on time right now, but
> > I'll open an issue with wolfssl as soon as I can.
>
> Hi,
>
> I used an ipq40xx (ath10k) device as an WAP3 AP with wpad-wolfssl and
> tried to connect with my Android 10 Pixel 3a phone and it failed. it
> works against my other ath10k AP using wpad-openssl.
>
> Daniel said wpad-wolfssl with WPA3 works for him with an older OpenWrt
> version, this could be related to the hostapd update we did.
>
> This topic needs some investigation.
>
> Hauke
>
The fact that it works with an older version is the reason I think
that a new behavior-changing feature is responsible for it not
working.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
