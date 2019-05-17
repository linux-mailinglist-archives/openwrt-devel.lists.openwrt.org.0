Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADAF21DA1
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 May 2019 20:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhjqbrWGsZzlecU2JfORCqOfh12GLG70PIhWFYlRNaY=; b=siVas9eWPIqjZ+
	AukcoMZ/x2gy/sck4OFKtpRb7P/QosNzRF+Uo2PE01W/aMJA1iRdCdVnv4opEyRgPTxIsiGonSPB3
	ryLdh6Zmb2oZbccHIChexZ5w6+I/ozjzlrwUBqLoU2zLO6yDhNk7Hq1LqF4zVHPmFPXRW3hGK7EBZ
	SW78Gj3lXcc8PWviqC0C6GfCBEhVluoxzTxlWKFgEBXL6QNruBZoVtVhsVmeDfvyrfxmMWh3npylm
	IxafwnIg8aNia3XsMmU/pMGZX4LtReXywGpFw8vad1upDbPpGUETvWd5izn0Qjyo+gVAkUsVYgFJL
	KnId0UdlkYSZGuOGYfhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRhs5-0004g2-HM; Fri, 17 May 2019 18:46:21 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRhrz-0004fi-Oi
 for openwrt-devel@lists.openwrt.org; Fri, 17 May 2019 18:46:17 +0000
Received: by mail-qt1-x841.google.com with SMTP id z19so9107466qtz.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 17 May 2019 11:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RWqKiKEwQI5Uw7n2sMkeIv/qtOHCaIyiAabyRd4knsg=;
 b=G8qoFdr7ANurr2Wf/IOv+bawpdhBCT04owJijVHlCoZM60kFx6TrUsqUbVRQsgmSYD
 2AbjcDlXB8SHyu/wrx8ulVXJeSP4kT6DKea+yMZem234TU8e2j9n6Ykh8AENtpFP+tcS
 QfDyEaHk6bMNShFiy/X4mJDwFGgu78b3KMXPhZiewUHB2fMnYeayK8NkWwytK7CXsyOf
 53vF567wf6zaF1tSXnhDFOEv+MWnbxTYEFt4kJfcqP8lODUdLswfVKkQaYsaZN/KrPBp
 duo5hqA1gSNe56jO3beFzj5Zt+l5lPRwuHgMme/Pn3I2xww673Nm2kkOM+yFCV55UXZ9
 fxtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RWqKiKEwQI5Uw7n2sMkeIv/qtOHCaIyiAabyRd4knsg=;
 b=fb+h335MA4NUb7GQy/n5pgsJGXWCh2W7q5YfktIf9xCyHtpR2ZW45D7KdN+xxUV5ls
 wGDScGY1Skq3/CIwb6dXkB4Xb6JGOQLVryBOHo+Jtcl9VM9SF8VWRJuTTQ9l2s1/9lTM
 74tGBnRRYrOpY/9HI99RjotchiAkYvaLaqzNDWTm/75loAPa3x6Uv18Jwewm/OLeQ45L
 ADaeFIQRELY3bwKgj9FJbZmSUFmuKbskfPBMe558FGMk2QpcU9jvDLwOjSgibptX/CMk
 xauh1KnkBokvxYjAbcVwng+RxhajdFcLgSDGNbYv+CtQJ653iZPr3uZChOwT1nQgmrpi
 MT+g==
X-Gm-Message-State: APjAAAWa0sQouQeYIBEAP4Lq3UPV8xxS6cebqsXnDCwpiB7Rr2DkZtl6
 RPQvzqFG6XCqNYlz7cuBx596i2NUprX22HthhMTspA==
X-Google-Smtp-Source: APXvYqwGWHTC2qukNP4+dPSqKCG59E05lCI6qJfnKkxJLhtt39B8WmyOfqGZQc4n8+fMycU6iHYDFHjU5wjcR1OJaMU=
X-Received: by 2002:a0c:b5ad:: with SMTP id g45mr21840772qve.231.1558118774500; 
 Fri, 17 May 2019 11:46:14 -0700 (PDT)
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
Date: Fri, 17 May 2019 20:46:02 +0200
Message-ID: <CAJLcKsG_xifL1sGdwmwwM54eboqLEb=KbAoswAgpcS1_NeYHtA@mail.gmail.com>
To: Tan Xiaofan <xfan1024@live.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_114615_802585_F8A9E12C 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
