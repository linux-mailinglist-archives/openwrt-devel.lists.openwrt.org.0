Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED82F85438
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 22:01:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3vvN2vQOLLsemEXUf+ooy4VFeAZOk2H1iEHCbNLTP4=; b=EjmU85CbqqNjo2
	nMVfFI0TZS5fsz4YI1yYp5QV6Loa64VtUgvwS6oM2nkrC1LDln1t55h0CD58lnHtDOsaeEC1tk1Zq
	1htf7OIWkrEgT1XHInbgDpH1YHCX8qH5Q2PqQTtX3/9PmvM5Q+aCM7G9yyPdxXb6CwedH2TNwvlQd
	o+LGm4Z8WpcZjay/LHcU7/WXF38Ak+H5yqWEVZ4DWx4KSQAU/xrF+/7FwWnCan4eFUYxxlOcnZSmA
	cR61tAHXluOURoDgGS2sGL15f3WSkq6W+jV3i5TDclt+wFnCCL3c8UUMCqrp5Nyh7pX242N2wsO4D
	IT4mRzEWALebFoS88IrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvS7x-0001Qd-JU; Wed, 07 Aug 2019 20:01:41 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvS7o-0001QH-KN
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 20:01:33 +0000
Received: by mail-ot1-x344.google.com with SMTP id r21so103264857otq.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 13:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=vvcInt0irlhUdNoQz07q+EUhXNGP6sVe+vHcb2IwPUU=;
 b=vYPdiQo7TeNds94Pb4CkIk6yZYHQoD5zJ6btpiflEmgbcysBP1/fDOMQNJ2b+VQij0
 M4NQGqZ04Qf1JOBTz2mv/PEiASJiMJhu7vYR+/OC/IxXrNkLLxPhP4JQK14y30H4kgTk
 eqwpuP4NGgj4FJ0fan+zODiLO1wctlgm0EvXetAj/wOeq79v7rHWmihKlQOyBGth8mLb
 BoL/eKMYvgvWcUYHpWMZCvq3MvSO3ENTZ/eDTWiShSYdCFsaAUPZcjkURa4iKTK0zunP
 OZIgu3PygnMzfOIgClUT06uNE5rTfFbF/7xqWjfHRYGwwX7uOKIn08cSEeHG4h2NnZRp
 VS/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=vvcInt0irlhUdNoQz07q+EUhXNGP6sVe+vHcb2IwPUU=;
 b=DdXWra9afbqUiqm8ZdITokiJnE+KpN2tAGtdTkb97UDm7zBDU85YHb8VdRxbE29MJd
 7vriHn8Duok9e2gaVn7R0ml4bnMo2hQb5ImdMLVYgWsPDVM2aDsY8GcNgk2JsDUp/bmm
 amGPwLYBgo9HJJPeX3lAYIohBO0HLQQLGk0XtQ4SI6xlIgfr6GQ45TOECxoiUh1LLbTt
 hvWkg+64Sk0hIsmd5VplP10MLRu0oHglu12ytlr5dpjXy3ybm/uviG+4pn/qGuvybb3z
 ee/v9xwvGioY8sQtH/kFqXTVIEWlBP6ZoxIb6YlbtoBjiv/fXKyom8a7VGiDAnTeSHFl
 aXrg==
X-Gm-Message-State: APjAAAWl9kgQVC/iDij2h8cvjN/VgWI6FGX3ZgIATMWQTZ39OscZ/x+w
 exzU6l34qJyCaZB9I8y+YnrtzqWSw9ZKs9Mx1yw=
X-Google-Smtp-Source: APXvYqzZj2Jx3kBbSdgp2g5MwaX0/zU+Qd4rFJusYXVmbyTk4iKGwwXNJUmFg6WEaUxPkasr++KSohViBzFsgr9NhQI=
X-Received: by 2002:a02:ce35:: with SMTP id v21mr11777098jar.108.1565208091372; 
 Wed, 07 Aug 2019 13:01:31 -0700 (PDT)
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
 <CANoib0EFR0N3xYT-P1yneWMrmka7wAzLFA1Bk35wS4bLx5gj-g@mail.gmail.com>
In-Reply-To: <CANoib0EFR0N3xYT-P1yneWMrmka7wAzLFA1Bk35wS4bLx5gj-g@mail.gmail.com>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 23:01:20 +0300
Message-ID: <CANoib0H-2r2ypzLWc2Td+H=j1FcaXe+qf2nwP8sKgHLu+_-irw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_130132_673522_CF0B4B8D 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T29wcyBhZ2Fpbi4gSSBkaWRuJ3QgcHVsbCBtYXN0ZXIgZm9yIGEgd2hpbGUsIGJlY2F1c2Ugd2Fz
IHBsYXlpbmcgd2l0aCAxOS4wNy4KCtGB0YAsIDcg0LDQstCzLiAyMDE5INCzLiDQsiAyMjo1OCwg
RG1pdHJ5IFR1bmluIDxoYW5pcG91c3BpbG90QGdtYWlsLmNvbT46Cj4KPiA+IEFyZSB5b3UgdXNp
bmcgcmVjZW50IG1hc3Rlcj8KPiA+Cj4gPiBERVZJQ0VfTU9ERUwgaXMgdGhlIHdheSB0byBnbyBu
b3cuCj4gWWVzLCBJIGRvLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
