Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 917A2BBD5C
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 22:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHZI87k1Q/4j18nlMUzvyiN3l9fXagoaDlT8RUD5UpU=; b=CscKOMhTD0Up30
	CpFtPlwKFJrpXVZ/Fc2NSFUQtmEHbh+9lydQYIzUI4xpyjFbMYmW6E5ApVyQBUhUpeBC+VVeU9oPO
	PbbnS+GVvPW10S1dC3ouObobGpZ40XSAd2dpXP3vksB1oSviWv4RnodsaOQChMXDsAtZN+nL037xZ
	/KNt/c6nfr5c9BljJ1l9uM7fTfMecEekdbr3MrnQFSXjZGorz0YVHnWEq5OySVu8HN9qGXATfoUzW
	p6CgSohRSb4JfLcJGP/o/56+RZipOyZCxSPim7OrORn/vn8bcMo5luPRkqoS+8DYgsrz27erN0Fvs
	wJMx9kD2kBx5GQMcKJJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCVMV-0005fa-0l; Mon, 23 Sep 2019 20:55:11 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCVMI-0005fC-MN
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 20:55:00 +0000
Received: by mail-qt1-x844.google.com with SMTP id m15so18917080qtq.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Sep 2019 13:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1pBAZVpcopHgcAlomHuzaZ5uvXqjaQwnVet5/GbI0iU=;
 b=D6TMxcoop2biL3oMvWgXUA+8xqFfdgTJipQd2wtSe4HSdZfS8Q9AeciIPiJynS4Xcj
 vl07a2Law4/aJpx5SPIGvnEddZPt2pi5yCq0CCLmEzPJTzMW/EUYmVixAGpgt46nL27J
 s5wsWcHOT1TNaoT8sf1kul9S5vYvoq2pth/VnZ8eRdopFsSPAlvPMPxcbDWrkwTJu9pG
 N4wA0nzLNKXl1YyCD97Tde481687FUlmfKz4QnjGLLFMhJCvNfWGBJuqW3A89ByWJ//3
 WwoulciLfeSU0DTqFe42AvLjJLReuHQY8wEMg/PnDs4m4YnHM9emVFzs3e/Rlv5Ldlyi
 ocFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1pBAZVpcopHgcAlomHuzaZ5uvXqjaQwnVet5/GbI0iU=;
 b=ZoUC3Q3ue4ezVLgeL6f1S+lRJkjb85Uy9XGXYXtnnZ/WkTWXmW6goYwyo9e5DR83Jp
 oBiWL7+0fg31VWHwOzV9LqUgdqd2W++T9I9ILDhsB5qUeg5NZs1uelQAmx30CI9jwZj4
 SamFHjKPoJlk5wn6Ibt4UBdhmbqOF+Un31EaQmp1pXwHygZ+ho5le23YG8FvPYRGSM43
 FBv+c+wnltczSufvfyDYY+/wMXl+Zokf0XtZLmWiYFbx10nLDebWII3u3SERtQfOZ7VT
 2rf2jY3bR7owKgnZs9lWPdy6ouEYC3BnzlXjYOc9asBHSZayaZPs4Ilik3EjfTxPKpD2
 2CPw==
X-Gm-Message-State: APjAAAUXRRp5+jzXpy0U0z6TgaRLOa6wIwlPJ5JQ8V8gX4vMXLnAb9pJ
 PLLglRIS9lru+7z8G5zasO5Y1d2SN9KtZb341SY=
X-Google-Smtp-Source: APXvYqyZYH2VdkHBLx6NY7ev2V1AGB8YecEROjqhnHnC1Frg7fDHkhxDeu2z+PN/fxCjo3DItvUiOCGSAed8MqZQJXo=
X-Received: by 2002:ac8:47cd:: with SMTP id d13mr2104296qtr.369.1569272097072; 
 Mon, 23 Sep 2019 13:54:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190920204804.10183-1-cotequeiroz@gmail.com>
 <CAPxccB13Fjqbob=cLYnJS8UbJUOFtqoFOJQif0jvAy1qUMhyCA@mail.gmail.com>
 <CAKxU2N-5OOCOe3n=G6vrzAWKB7S-yjADsYbO8BreFTNs97uF=A@mail.gmail.com>
In-Reply-To: <CAKxU2N-5OOCOe3n=G6vrzAWKB7S-yjADsYbO8BreFTNs97uF=A@mail.gmail.com>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Mon, 23 Sep 2019 17:54:47 -0300
Message-ID: <CAPxccB2Xx1uB81K3-0==9fartf+OO9OdGwEjAK2U3HM9RRvxgg@mail.gmail.com>
To: Rosen Penev <rosenp@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_135458_732797_C0EE86B6 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
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

On Mon, Sep 23, 2019 at 2:12 PM Rosen Penev <rosenp@gmail.com> wrote:
>
> On Mon, Sep 23, 2019 at 5:28 AM Eneas Queiroz <cotequeiroz@gmail.com> wrote:
> >
> > On Fri, Sep 20, 2019 at 5:48 PM Eneas U de Queiroz
> > <cotequeiroz@gmail.com> wrote:
> > >
> > > This adds the CRYPTO_ALG_KERN_DRIVER_ONLY flag to Qualcomm crypto engine
> > > driver algorithms, so that openssl devcrypto can recognize them as
> > > hardware-accelerated.
> > >
> > > Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
> >
> > I noticed this was moved to ipq40xx, but ipq806x is also enabling the
> > qce driver:
> > https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ipq806x/config-4.14#l119
> >
> > So I imagine we need to either copy the patch to ipq806x, or disable
> > the qce driver in ipq806x/config-4.14.  I don't have enough knowledge
> > to decide what to do, so can someone more knowledgeable, please,
> > either do it or point me to the right direction.
> Probably a mistake from the splitting of ipq targets (used to be just one).
>
> Also see:
>
> https://github.com/openwrt/openwrt/commit/fff65dbe2436351ea1feee6c79110971ec4d5881

I thought about that, but then I saw the specs here:
https://www.qualcomm.com/products/ipq8064
It does list the crypto engine for ipq8064, but not for the rest of
the ipq806x family.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
