Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7797C4767F
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 20:51:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgEOSfFn6Mj8kpJ97TTQQEJsxflAwscKdOpYa+dE0hQ=; b=ewGZh+h48wsQS0
	OBGCVNWIlX7iHxTdi1Jhvg4eEh7xF6yyokk9tIax/8HzvlldDOCDipyym9f6MPrWLuxuSJt8cyJyd
	oW/QeATJzY3FwQ2eD5VlUi77/HNU+nwNsnyj4FVsnEJm7/AV4kEg9tW9gyy8LVnqbaP67zICDAiDX
	10OFTsmQEpYwTqBxXkwvhKYo8q5JBCMBShZAcGepLw7Drlmds8gs+X19Chsz5TvfJvqszZrFWSy0l
	co1Pgd6XjiOuvWKmhCIhCAaEAIzgyh3YY4uuaYQBoSkKpJN9JY9N/BPK/7d3C9YVh2VEYd4VTyvgs
	TehqrsoLZQq8PIGXNP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcaFR-0006kv-Es; Sun, 16 Jun 2019 18:51:25 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcaFH-0006kb-3P
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 18:51:16 +0000
Received: by mail-oi1-x242.google.com with SMTP id 65so5461132oid.13
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 11:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fjWXBewkC4O3YGmmPhMvVwVceyDltIpCOTRNL8ZRgvk=;
 b=MpfubOX9hL/7AKDwA0sRk8F7gPiWS6D1Wxw0Uq+w8Ks2nr9ka9CRQCChOLkX25C9sF
 hNFLRIWB07PjlcTmEzas2R1QMF3YPjRGXs1QA2yL5OBwtk5VDTdaweJEbwkBlXbLrNM/
 MIMPDHZ0cLIFnL3c69PF3vVN+VCvAf+B0HWj/I9CrlZD7ilkMDD2B0T2csBnPLjwmX6g
 Al4+NhkPtFFrMNudjiCyD/aCGxHpvbyaN6lvR24bwhasR0MQn15ltqvBIZMl3+Idn7nc
 ZbTgXBc+ylWyehbDVaht/yhqWZS3eq3uk8f5iQxRFRb85BXgdCI3waAD6/U74mH2GFxn
 8o6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fjWXBewkC4O3YGmmPhMvVwVceyDltIpCOTRNL8ZRgvk=;
 b=Us5Mkl+HoqDZJ3xetJY2HApP0/WboHJU5+5mMq61dTgqJCk1eiEQf1rUoekXfMzcOG
 uf0wfvvN/l8nhE9QYTuAeHv9cACJJSlZaKV9AnUf46LNvY7KB3hnhqcHxsc1ZvwBVGx3
 CNyQT7W6ErxO4ZFDCGcaEezywhInOSeefp65fCBlPqCfwr+J73h6J3HlNl2wvkGSTy/N
 9MNE+7UC3m5BB3LDs+/iX84ZH/UFqrtXglyAcVjfR8Ekh/4XCWDbBtMGk2Z6D4tTLkfu
 uXceu7uRAgueqBPvh2UxmcxvBkQZx3KFQngtNCcePBa4mePzU8CBHdUvewqbSFJNR725
 o9+g==
X-Gm-Message-State: APjAAAW273USUz/TNtnpwtDRpMTD504tYQKzuLMYESs3qTK5JbClgyNY
 yWvzFTR+mEIcrYBFVKppTo4gcJKBfvPmZ6/H15M=
X-Google-Smtp-Source: APXvYqxkQUuOUpuP3F28xSwVhTJgcdNXPKHMY8WUZwp58wduJg9cDRUnl1Z3UC2TBBk9HL9YykS1ikTQO8g1iQ/l4O4=
X-Received: by 2002:aca:4083:: with SMTP id n125mr7920437oia.106.1560711070576; 
 Sun, 16 Jun 2019 11:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190616115605.6992-1-chunkeey@gmail.com>
 <83436d3e-5ddc-e8da-9f05-86f6e7829ccf@gmail.com>
In-Reply-To: <83436d3e-5ddc-e8da-9f05-86f6e7829ccf@gmail.com>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Sun, 16 Jun 2019 20:50:55 +0200
Message-ID: <CAAd0S9AMcg0qAyMNipj_zfnVcZ=EEsRP5_astyaJGw+pSrkyjg@mail.gmail.com>
To: Piotr Dymacz <pepe2k@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_115115_173212_66F31395 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] phytool: add phytool utility
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
 Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello Piotr,


On Sun, Jun 16, 2019 at 7:08 PM Piotr Dymacz <pepe2k@gmail.com> wrote:
>
> Hi Christian,
>
> On 16.06.2019 13:56, Christian Lamparter wrote:
> >  From the README.md:
> >
> > phytool is a Linux MDIO register access utility.
>
> Is there any reason to keep it inside the main code base rather than in
> packages feed?
K, I rejected it on patchwork.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
