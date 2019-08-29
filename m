Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14914A1491
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 11:20:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4MQEOTkusZhaNP+vA6iaftjdcoTABaJo4VCeFe7G4Yg=; b=adm6bZZI79xY/jyhr/VwqOhKa
	GWSjTL97P57BUkhiqKOm9fyzoDb7PJ4qIGYK6kXSNYeIni8Prz0Nao5jWpDMHu04ad6ZtSqK89gkh
	qe1QSC5X90wWXJBdPGPs/6N+KnsW4OvE5nHJDixow+gd7awX8L/bfTB7/GTEuMoxAkVIgTPgcb+n5
	QT0wERV6xiJWeOfwkLxb57dUefN5pyTw/kFnEfPoIiJr3eySt9jz4XaZCFtL4sjyKglmMLuq7YN7/
	9h2tsEsRU4xyCI/5xfz1BGVkExV/TPAKWGkADrFou6ojJMpi9tNd5chvz4+hLxqOqZFO0LsYTPS/e
	5D/Z0w8FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3GbC-0007R1-5l; Thu, 29 Aug 2019 09:20:10 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Gaf-0007IF-88
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 09:19:38 +0000
Received: by mail-wr1-x42d.google.com with SMTP id y19so2659675wrd.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 29 Aug 2019 02:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=2w50H285mdqp0K/Jtv33q8P15cgeECGWEOE8YHl6zhU=;
 b=jH8FpsTK3DzkQ4Of9R86plWyV/MU35ro9321pdkmO3Z3BExljC8gJgZc6qfWMvQRpw
 Q2di18KP1N47aBI2+DasXxMatVKanJdDsI4Q47sTn/iboNPU65NHuYHtv3cBg5tOJ2zG
 SDFbeaIHLJLuuHhChZ6skvixhcXEV83atH0lPtFpx+uXrl3CLJVXrg1Wc08VN5rsZp+V
 uurN1J8tBOQR2dPtypCWqHRw2Pq71ZnYv+RiOAyfEDjL9Zjo2tclpg+Wifibl2BAyq86
 fRk1ntnlukwrxJm0bPykW3px6YGp5OIGFdu4KWfyXP1iq95HC/heCJsgkKF0c1mGQRRE
 OE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=2w50H285mdqp0K/Jtv33q8P15cgeECGWEOE8YHl6zhU=;
 b=Nv7go9iWVM2/iW9to2U0HtBjLJ5U6hyFS3cw0I2hC8Y3oPefOF67Z3yMYlfaPwMDcQ
 KoczBXJdJ+rS/bWUixRUAfYm9QeLAqGiqEnjSxSRL4o/BKFuLz0RutCEkEzs1cotdVWD
 M3k5COvoFWu1i3sY31xVk1C223rQc9OwxmP0AIu/shQC1E8p9f5koGrZeb/0bK1fk0j3
 BoVHRYyGQu7SdewcrHGyfpyKTAUJxQOY8ykwz5fsmtyXSD/N+jTkT9Vx8rVjYK90JaR7
 XKKlnSQI58iQdEweXB9YduFl3G2Nt5MjA14eprgNUhRGzm7QtGCGHlMFyEqCHNeF/Vty
 fyuw==
X-Gm-Message-State: APjAAAUgFKW34piUuw4gDQMUDzEVya/vJHz5ZQxYvfImfwFQgQW7IdNo
 rqrO55je0FyqjbqRUwj+4VQ=
X-Google-Smtp-Source: APXvYqwGb1t84aiPcBsextlaOHNrDFbpkU1MGPcLmqgy7yfwWske6ozW2oP3ICQG6oJnibYYxGxgBg==
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr10359952wrq.332.1567070375175; 
 Thu, 29 Aug 2019 02:19:35 -0700 (PDT)
Received: from localhost.localdomain
 (host111-46-dynamic.5-87-r.retail.telecomitalia.it. [87.5.46.111])
 by smtp.gmail.com with ESMTPSA id m7sm3528139wmi.18.2019.08.29.02.19.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 02:19:34 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by localhost.localdomain (OpenSMTPD) with ESMTP id 0d7f9612;
 Thu, 29 Aug 2019 09:19:32 +0000 (UTC)
Date: Thu, 29 Aug 2019 11:19:32 +0200 (CEST)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Lars Melin <larsm17@gmail.com>
In-Reply-To: <7ecd449e-3b8e-6959-4e13-d48aaf8b3f25@gmail.com>
Message-ID: <alpine.LNX.2.21.99999.352.1908291117430.2746@localhost.localdomain>
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
 <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
 <878srdp6zt.fsf@miraculix.mork.no>
 <alpine.LNX.2.21.99999.352.1908290226520.4679@localhost.localdomain>
 <7ecd449e-3b8e-6959-4e13-d48aaf8b3f25@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_021937_308971_9F617F91 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 0.0 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
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
Cc: openwrt-devel@lists.openwrt.org, Robert Marko <robimarko@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thank you very very much guys!!
Wow - this seems a big step forward! thank you!!!!
You're very kind and I apreciated your help very much. Looking at sources NOW! :) :)


On Thu, 29 Aug 2019, Lars Melin wrote:

> Date: Thu, 29 Aug 2019 05:03:27
> From: Lars Melin <larsm17@gmail.com>
> To: Enrico Mioso <mrkiko.rs@gmail.com>
> Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
>     (Fritz_Box_HW198))
> 
> Hi again,
>
> I just found out that Fritzbox 7272 is a 3272 where one USB port has been 
> removed and instead there is an RJ type port for analogue telephony.
> Otherwise there are no differences between them so if you find resources for 
> 7272 then you should be able to also use them for the 3272.
>
> best
> Lars
>
>
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
