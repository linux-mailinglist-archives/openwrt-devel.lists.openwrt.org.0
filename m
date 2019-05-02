Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A6D1175E
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 May 2019 12:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoznN5gUy6/QZoVnUirvvOnh9uUBfSw8lLVLbZQPRl0=; b=S33K84Z6WkZKhA
	28CVFEc+JH8ZhRjWC1p0NlRB/dtN39eNyq/8YpQ7xveXkUBpBhUHMUj02E1oo0UMLXAnKJYPcjQvl
	4ABlNUT4H1ngihi/4rY+W6dlV4GRdJQnEwa/J514jIMIcJ4aioknVBI2HbffFzFM/+JHk2C8vTJPI
	IVFKHwDdyEZzHwT1qYZVtRzzx6drfCt91McNoMAWT5BG+b8Nh6X4t8IKlD9GAfRkZxHxFjPoTszbv
	OYHLTxOb/VSn42eD/x6TfofUyPv6f0Maw0xrf+erY/Sb7YjC2yVkoF0ufagPNqrpFvW6qoPALnIB0
	oVMeUupAF5P4ERS+vAPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM96P-0006U5-Ap; Thu, 02 May 2019 10:38:09 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM96J-0006Tn-Ib
 for openwrt-devel@lists.openwrt.org; Thu, 02 May 2019 10:38:04 +0000
Received: by mail-ot1-x330.google.com with SMTP id n15so1615137ota.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 02 May 2019 03:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vFL6w5B6ne/MId8ciMe2+OOUcajYotQxkTyKZuREpzE=;
 b=ikbr+NrgH4vzLXdL11n8uEj3om1oj/IHQgnF6kkbuHC2SVkfu3rbdzJ2FQDYJIo/Qt
 cpdwoIatOLlO5h16Dn0of2Rro1DAynzJu+Za7pqYEQtXf0GxSstTcclVp2SzesM2Rl3S
 9ddb1RDTQFrvwtiworlXJljuB6Xpeb2/cQZxpIoZ3YCO/5gOsg78+0keCvu3jIUpQUPj
 JpKD/pwydxPTbLyk6PbrXc9l8uFE3p9cI2B9eySGt01PTvhPaUq9mpr4yDepWjecGxuu
 mtBEHBBXhigyJLlqCiaaEylpf1+I8vB2KLqqUMlmim2l4eLQ1RuaQHGbik25X3Dd1EMH
 SFHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vFL6w5B6ne/MId8ciMe2+OOUcajYotQxkTyKZuREpzE=;
 b=ZR/Lzg5CfqRwqzW2BpVgzy+nWyr7kUsD3SqmDS+oG5caD6wsEAUzET97oy2l44g92/
 A3q4i9XUF0THDEkHijOn8J+t4qdjlU9X733BqmkPLC5G9bEeMFn5WqPOk9b4hWKFwEMW
 o2jI5dttgL1aaas1npxuAC4tslUareJZSZR0zhp9V/3P2FqZZ+09HI6ojgW68vrvLUQL
 FRue40/Fal8gK8X9dBmCUf8jyfC005Uu1gSDrHWzwS4NsVySGe2zgd7mywjAuZTr184E
 MXKeQyddvSkgTwJFkUXK2kfT2TLN/ZM9QPNuvYadcu0vJT8hJ48pIQoPVlx5cgljS+kp
 dSog==
X-Gm-Message-State: APjAAAVlYsigtVL3gl/+c6URBo/+/aXy9Mqi/3hzQOF0ivQafoUr0mj5
 LjouxoFWQDvWbDD28TwJqeSKvuqQX1384c5b4VI=
X-Google-Smtp-Source: APXvYqze311tiFRhRqQ5jElhJd581LmPOeQ3v81TaB2+6PPurFlqmGagkKsesksyXDOL0Y6/QiQDBE+CK2teA+dkzYg=
X-Received: by 2002:a9d:61cc:: with SMTP id h12mr828819otk.294.1556793482198; 
 Thu, 02 May 2019 03:38:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190425121752.14203-1-kristian.evensen@gmail.com>
 <CACna6ryn5xDYz-Th43P1HwpB92WgQ79ha=Bocn04FEJTD62vAA@mail.gmail.com>
In-Reply-To: <CACna6ryn5xDYz-Th43P1HwpB92WgQ79ha=Bocn04FEJTD62vAA@mail.gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Thu, 2 May 2019 12:37:51 +0200
Message-ID: <CAKfDRXi7QMwsz5_k_htiMy0Rvui5iG__KgvfTTQ_YtSpQ3yXLg@mail.gmail.com>
To: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_033803_638965_A65A2C27 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: Add support for Head Weblink
 HDRM200
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGkgUmFmYcWCLAoKT24gVGh1LCBNYXkgMiwgMjAxOSBhdCA5OjMxIEFNIFJhZmHFgiBNacWCZWNr
aSA8emFqZWM1QGdtYWlsLmNvbT4gd3JvdGU6Cj4gUGxlYXNlIGluY2x1ZGUgU1BEWCBsaW5lIHdp
dGggLmR0cyBmaWxlIGxpY2Vuc2UsIHNlZToKPiBodHRwczovL29wZW53cnQub3JnL3N1Ym1pdHRp
bmctcGF0Y2hlcyNkdHNfY2hlY2tsaXN0CgpUaGFua3MgZm9yIHlvdXIgZmVlZGJhY2suIFdpbGwg
dXBkYXRlIGFuZCBzdWJtaXQgYSBWMiBsYXRlciB0b2RheS4KCkJSLApLcmlzdGlhbgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBt
YWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3Rz
Lm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
