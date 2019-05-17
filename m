Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C33B521DCF
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 20:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EAJp18Z61zlc/XnhpLXfEWBMLn6cl4hMAjaqrH6Bllg=; b=Jl65hot+fkGfrh
	FMrt2q74LDDAmLSxZxfjBGci+OzOjecwpC5clB2/hsTvJjPqelBolwb1rYGfm3LGu2wq3ahL7g3zu
	RXZHcY8FKQRVlIvDEEKZSaYSkWh2O31+YP9EZSGwt5l1rlzPW476rsBKxLlqBNNAijmGxmdpLwNn+
	Z4H50lBu/5EIBi3K1m9H4rYHB7oe9fEH0nX2lM0nPbBcfAQoacZQhhYUqWdnQ5xVOzr+kKvf2hW+W
	VjrZ5v3dLq+vttZr7gP1WE3bkhSeE61a9UonSkiycyw5lDba0E1NSkjFWTt9XLQScsUP4OvEeKm6E
	hIuinxecsIsgNfCuCT+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhv3-0007S5-NE; Fri, 17 May 2019 18:49:25 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhuE-0006dh-DH
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 18:48:37 +0000
Received: by mail-qt1-x844.google.com with SMTP id m32so9240546qtf.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 11:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1yBmCHT5xSAGHn/WlyoFzMlP5D4XkgersudCdzpbKRA=;
 b=Vm0UefcwEvz3rcu3AloXLfiNKLvrVSL99TTcdAY70vQ32ebGeG/DMAJg2qcdM4i/Q3
 UnGZfL3sTH5ukXlm3Yv7aiXUKwPLBAghYZ+jlrmC4FThoIc9E+QKXMb/E2UIIXA3ahpJ
 OGuhykr/6S4fiy10f9iuWo2AVxKtIMlRX/k3zyx7likmBG6tm7neMmc5u/CWYs7HwDtV
 3CIrxThCVQc8lM16y/+fO1rPvB5oO9CAIFcOlUGZpCSKKPxfQfNNZAvIeRqGmAo5+ReN
 JLq2K3DG3zs8L3WMnCH5vhkoaxhgG3X9QDpRlwJDl9gjguhWKi0QaPqNQnVUhMT/goJa
 +P1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1yBmCHT5xSAGHn/WlyoFzMlP5D4XkgersudCdzpbKRA=;
 b=Yy0Zlg9kjD0AkbWC1ToXierG8TXeb0+WIw50RvU2wxH5M+tMghsHOpJLxArn8So9Sz
 jwvtN94eHubroioMKg8woVKlXwPz5RztthlYtlkRaereO/pNs0iyKxI8iWzciN0EqPte
 bEKouLEmGQBFEZ4W8kvW/m6UXOfLThRvhCrj48m7qUxO29DYuAXMcQnwn4LSwJ2frcyz
 +wgpsJVode9M6b6N3eJ70XmG8YXt6IAuY9kOoZ6MOp/kzxIuYludMBJqlJFIEPZWAhnc
 hQ7JeorGMzUiAKtC7/lm9rq7ASNsfHFJ+/ZAogLa11sL5UOy1j44gdTvDdXB1K0EZcqn
 8YbA==
X-Gm-Message-State: APjAAAU648mCVk5BJXQ28IYK5POEpwnJk8trJ5fhLl57hZ94yIK0vELf
 yzvRFK3Gu7gRb5bvgpMLj23HR+q+dpwwTZW74lNAHBOY
X-Google-Smtp-Source: APXvYqyKICGXXRyTgRcqN/8vRlZJFxITLGBfJyv3czM1pKDv6LaRyN/6HiqFEt4hjOWpZFzkR8ff3wH5IqbIMO9lXy0=
X-Received: by 2002:aed:3b24:: with SMTP id p33mr31752434qte.226.1558118913257; 
 Fri, 17 May 2019 11:48:33 -0700 (PDT)
MIME-Version: 1.0
References: <AM6PR03MB4821E7027EF336E03B57C642B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHrZ+SKkFz+w_Cb_aSztT9yB6p9xYdnc1c+Mdwh6ftOig@mail.gmail.com>
 <AM6PR03MB4821A0DBD99D2B7F7F49254DB50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsFycig9BNYkh24CeFAjadb+wJgO4uqmaFp0Qa86P8WNtA@mail.gmail.com>
 <AM6PR03MB4821953F914D9BAF83521992B50A0@AM6PR03MB4821.eurprd03.prod.outlook.com>
 <CAJLcKsHoFxKzCuPQWW-pP8pOjQMiWVOs=ZL-Ms9baF9j-hDXNg@mail.gmail.com>
 <AM6PR03MB4821E5D7897A9ADAB7C60B50B50B0@AM6PR03MB4821.eurprd03.prod.outlook.com>
In-Reply-To: <AM6PR03MB4821E5D7897A9ADAB7C60B50B50B0@AM6PR03MB4821.eurprd03.prod.outlook.com>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Fri, 17 May 2019 20:48:21 +0200
Message-ID: <CAJLcKsET1OC9yUWOOtS-ySZ+q5K96ThGx+MkwDPVfFUD15bsNw@mail.gmail.com>
To: Tan Xiaofan <xfan1024@live.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114834_495930_74DED6D6 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dedeckeh[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] interface-ip: fix find locally
 addressable target for p2p
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
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Fri, May 17, 2019 at 7:27 PM Tan Xiaofan <xfan1024@live.com> wrote:
>
> Hi
>
> > Can you share the network config which requires this patch ?
> >
> > Hans
>
> config interface 'wan'
>         option ifname 'eth0'
>         option proto 'dhcp'
>
> config interface 'iptun'
>         option proto 'l2tp'
>         option defaultroute '0'
>         option server '192.168.100.1'   # l2tp server
>
> config interface 'veth'
>         option proto 'gretap'
>         option ipaddr '10.255.255.100'  # iptun ipaddr
>         option peeraddr '10.255.255.1'  # iptun peeraddr
>         # option tunlink 'iptun'
Thx for sharing the network config.
I've slightly reworked the patch
(https://git.openwrt.org/?p=project/netifd.git;a=commit;h=22e8e589fd6ab5d19dc1d3c9d1bcf2bfabf1fafb);
can you give it a try ?

Hans

> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
