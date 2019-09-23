Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22D8BBA34
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 19:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FC9NO6cbxPO0LeMjd1ttE25he6wqdFREJBg5QiWAwNQ=; b=kdG7ZyCD++jEkU
	sWltdu4Tus//qubXZLPQIsfHJ0dW+i5P5oN00+w+dFIuxBdfC8QZv+9lC841LNOKKQBDxY74y0GDV
	FV369lkvwvXc5LOtsYm9xsyZJwQXT9QJ7ZTOiJzTH13Fd0z10ViOsDMvbxOI5MiK0ej3fLvyhlM+H
	ZyFv2M5B3WmjuKHp/b01fwwve743x0Pcejwms3Q0oeztsjgjAqkmjbSps+0C1Cwe9rG0ayHK8lEbj
	JgAut9yk79LYSIMDAncGcIC/LiJ9QsjZDiyEZ15koXYq3xc8HoJVeTFlBkViGSXkAG1Trvp+yra/8
	eC8NaaGh4pw18P0/jdBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCRsy-0001Ke-Ow; Mon, 23 Sep 2019 17:12:28 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCRsq-0001KK-KB
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 17:12:22 +0000
Received: by mail-ot1-x342.google.com with SMTP id m19so10968718otp.1
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 10:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=orFX2YHpajaZNp/viW1giPNl2oMGcQD/lQi2yu9erWM=;
 b=paGyO492Izz0dkS7j41SZ+kzHq9e2ALXUxAloO+oGiZ8y11H11sfmZ0VEoqeOHxIxJ
 jZsA6pbmzStEGsVooeltDhYX0kx0vrEE681k/JTe4Y8eM2WNFn48aC3R8aMlwCyfGKhN
 38bMB1uRZdfbk7huaUx70uIe2OeQTCKBf1jqUSMl4G/UwICVrpsIeeuDRaPM0oqrQerq
 MiWzp0EfjmjR1vHyysbfrpwOGO5VZRTbr5Phdka500jNQJXj+rrwZomr9X3oWlxx28uf
 qACcbUtbojs4o70GUeHVujx4wcIZlcqSPjm5yJducwObQhgH+KFDfYthILyFWtvbvoRV
 AnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=orFX2YHpajaZNp/viW1giPNl2oMGcQD/lQi2yu9erWM=;
 b=VdVfdx2V8Vc/x308lOl7iZU8NC3awkLAb+vyyk7/xVCxhcC9IdyCB+zWYGhoIEOoJL
 F3l4FkKnE2lltveHo9mMt8kPbt5soDiNKQ0j7D4xSr0Pw52hYeDX7h7CWZXIBvbFXpKl
 vrktc2DQ7yx5ncEDxNkKuC5FcjLGIsYjVBHMAFeiBsB/BMOVE6f5oHZpDcum2tjNwmdX
 HN1oY50bwrlwLmyCCeVhgCtYRAXAp09s3lG2c4byX4N1Pn4j4Lyla/UVB7F7kni0Baj/
 AqpTRA3HX7oCeNw+MyMBcEBYYcA8wN+atrs0yqnZrzCKVjnnxOLshYtB/DACuF/GM5+B
 UMEw==
X-Gm-Message-State: APjAAAWelbeCKlZ7QXeCjktvzzb7nFtl0jYuL573G4pDeZYPxqnyNeAQ
 3c/gm4wjc9HjXUaPBbtAjjyH4ksZQPRRIo4nA7c=
X-Google-Smtp-Source: APXvYqxvPR/PpEmWd7GoDqYC13VHT2UfBc97mC10DsJ478YTopAkWVv/8F4TY4FNYlsKz88JoDCrmfDyjhDpJb1eoUM=
X-Received: by 2002:a9d:30c2:: with SMTP id r2mr810433otg.186.1569258738980;
 Mon, 23 Sep 2019 10:12:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190920204804.10183-1-cotequeiroz@gmail.com>
 <CAPxccB13Fjqbob=cLYnJS8UbJUOFtqoFOJQif0jvAy1qUMhyCA@mail.gmail.com>
In-Reply-To: <CAPxccB13Fjqbob=cLYnJS8UbJUOFtqoFOJQif0jvAy1qUMhyCA@mail.gmail.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 23 Sep 2019 10:12:07 -0700
Message-ID: <CAKxU2N-5OOCOe3n=G6vrzAWKB7S-yjADsYbO8BreFTNs97uF=A@mail.gmail.com>
To: Eneas Queiroz <cotequeiroz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_101220_688418_661F8743 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: fix hw-crypto detection of qce
 driver
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
Cc: John Crispin <john@phrozen.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Mon, Sep 23, 2019 at 5:28 AM Eneas Queiroz <cotequeiroz@gmail.com> wrote:
>
> On Fri, Sep 20, 2019 at 5:48 PM Eneas U de Queiroz
> <cotequeiroz@gmail.com> wrote:
> >
> > This adds the CRYPTO_ALG_KERN_DRIVER_ONLY flag to Qualcomm crypto engine
> > driver algorithms, so that openssl devcrypto can recognize them as
> > hardware-accelerated.
> >
> > Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
>
> I noticed this was moved to ipq40xx, but ipq806x is also enabling the
> qce driver:
> https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ipq806x/config-4.14#l119
>
> So I imagine we need to either copy the patch to ipq806x, or disable
> the qce driver in ipq806x/config-4.14.  I don't have enough knowledge
> to decide what to do, so can someone more knowledgeable, please,
> either do it or point me to the right direction.
Probably a mistake from the splitting of ipq targets (used to be just one).

Also see:

https://github.com/openwrt/openwrt/commit/fff65dbe2436351ea1feee6c79110971ec4d5881
>
> Cheers,
>
> Eneas
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
