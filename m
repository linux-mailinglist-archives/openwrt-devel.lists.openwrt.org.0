Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2144A1B4D14
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Apr 2020 21:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UpouZ8IbTUFMYfRKZyow4HvUS5tlNqN3SpNpZtJyogk=; b=Ku8Cyjtt8ZaKqU
	7+PGNnYnctl+5ORMGyXWAwkTt3nCTT8JO9S4t4FHCHxDLBKORg/l/vaQ39PSSNtNG06dftXaV5sy3
	ndlDRfvxZTxEb7KPnbVtulpiKzJMAUUPYJGigtGDxDM54zY7FiwA4N6OGcIROKJIkuyhkAWYgJ0zi
	ZRQI0UtWfoUu+gwaYj2QNZlqHeNDUAg83dLGmU8G2SOvnMGnD8ZpFX0mUMrOYj70fLZ5X0+CKzgpy
	PLdeCXk5iIgCjEdWKNcNWOnsH5HnTH8TTqzLAlAgpSMzK0m58+xAtYAhJA6nVjycd3ywc4jvTa0Ap
	YLFMZe6Wgutm1YQN66fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRKlh-0000Gi-0c; Wed, 22 Apr 2020 19:10:45 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRKlR-0000By-7n
 for openwrt-devel@lists.openwrt.org; Wed, 22 Apr 2020 19:10:30 +0000
Received: by mail-wm1-x330.google.com with SMTP id x25so3726746wmc.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Apr 2020 12:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y+KSQ1rHX56fQIx58rx+Vckb6E03FzXrkL3fxf9ivQM=;
 b=EfKKTmiTrz4GPdtuGpRKjnRmaWlymGS3h5Iji5JaIyCbfDbNyYcHIT/IKmLt9hNSwJ
 1qBZhH5ulRoLYUcBxTRHo4Xay5rJvUB2udrPBdTohoaJk6LW5lmxG2Ys/t6zPvojrB21
 wBi2ArqXfQIE17M8pT/ZfyapakAqirIFuVjT+/QADYqR0FE0ORBJStj3mmMK8fvD0IND
 s5aRMn6atLFQibzqZmQA7odLal4jxhEcw+SXkEfgrmbkBcGhchb2ifcEifNX9w7d6Elw
 9oiqrD2bVZvNUaivJlIfCEbJJQU4ZyaUAgzdh6IWghibyXT4XTsT8cPe1giPP74nsY9+
 lmDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y+KSQ1rHX56fQIx58rx+Vckb6E03FzXrkL3fxf9ivQM=;
 b=CtWqgfgvrS9iYkGkwNKoC6Fq8UxtFBk1p6jjThM+4cwM2UQ70PLUoRZTPhME1LM9pM
 zW+dn+YkASK7nIpJTBND5iqaAXPAYmM6Xu/f4ocqYoaJqzxX9RAJrUFoBCnBQrwNHF4I
 6Vi+KYDOXVkos7LuBv0Q6R3nFjkii+oFbJRgu0Z+9jW9MN/iL4gro61uqI+RXlMUfD6c
 WxMkIXCXRnyWGM1JDi1IStsoacTTnra94hEqjzdYBdP+5pD2hMlWkJXwo710l7hTKCwO
 8feefzEkCeOyNGTYSiV4Vzd9/BwC73UUE5MFv8JwH8sKDSARCFPtglVg6Pu2S5EzoBxl
 HM5A==
X-Gm-Message-State: AGi0PuY/GtwJZUVq/4ggFhGWzqWObb6MgUTQn9kb3+rw0qMdNVXM2J8z
 C6bYmOqlgItv4ygfw6UHQ/JySmYdov0zkipDvqE=
X-Google-Smtp-Source: APiQypL5Cue1eqlkXiZ+jnAqoPVlb8eDxlNNUxbrFSr0UKySwHkTBmZiOAEypPmBWeEG2PKwze+ttpIygT1g1yZlRwg=
X-Received: by 2002:a1c:bc02:: with SMTP id m2mr11882234wmf.60.1587582627107; 
 Wed, 22 Apr 2020 12:10:27 -0700 (PDT)
MIME-Version: 1.0
References: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
In-Reply-To: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Wed, 22 Apr 2020 21:10:15 +0200
Message-ID: <CAJN1KkxOw57NTkeki34sv9FoijqQBrv1rKPxRxCy9yCZzbhwHg@mail.gmail.com>
To: mail@adrianschmutzler.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_121029_310374_91768D56 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Port labels for DSA targets/devices
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

On 20.04.2020 at 21:42 <mail@adrianschmutzler.de> wrote:
>
> Please share your thoughts.
>
I think about it.

My proposal:
Three steps of convention:
1. Use name from device, when is described at chassis.
2. Use variant "2", when ports have only numbers. lanX, where X is
number from chassis.
3. Use natural port numeration from switch IC when ports isn't
described at all. in this case could be used neutral names, e.g.
"portX".

I think, most important for users is to easy recognize which port is used.

Regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
