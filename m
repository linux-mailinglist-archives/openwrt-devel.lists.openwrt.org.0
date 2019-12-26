Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307DD12AC49
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Dec 2019 13:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=q9xEeSqLPiuzbR97JuO00bIo7xgE43a/+V4gL8kSjTA=; b=mGz
	XJwbN/yi1Dl5rw8xafKtvnES+f09ajW0XgErPjPe7LNVBM7vJbuy2MJ3We+wfW3YhHYfh0gDdj2tg
	B9entSKO9MxuTVLNwya/7/9yunBIu3B+QuTC62GKxv/K2pXf1nys7BktYDIge+Cf4SuLOZQeqT3Eb
	1LsiAQhs2U8lD1On5NhTSaY4yrl9KhbBo6Al7lrLJ4uf8E0fBnXfvIR95+2YgvYUg7YHbh+1wQcEL
	XZHIklKZ0qyWSigBBgcN/DP8Q/E+qD9kazDdBglskkjvHXl0aPGjZJui/UimWfk2PGob2aroO1Ttl
	1tfxQ6XFGw9aXuv1ZsW969lz1PTlOqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikSip-0004zc-QT; Thu, 26 Dec 2019 12:58:35 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikSih-0004zC-HW
 for openwrt-devel@lists.openwrt.org; Thu, 26 Dec 2019 12:58:28 +0000
Received: by mail-qv1-xf29.google.com with SMTP id dc14so9018683qvb.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Dec 2019 04:58:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=NM1LBXBKqsy2eKWHYJ/T+E7ZVwsCCavmdsrmBfyiN/Y=;
 b=eAqsUNLQikgE6S59mLzfQ2Sp0IjDMiig5qjo1U50r2V9PciFoZCCMf+qjP3M6cVGLW
 hunmrNS8UAoJdRTOWH9p5zFc0ltc5ghZO9jxYTN9sbcO3Bmh/JYoSX6Q21rLSni4A7IT
 hP6nKRkDKHp0PbvMGmt7imaAcEqoPAgV2tfdtOqiM+sRJrZzCS01xytvIXCuk90zgCLS
 e5jFRb8VHpqBUwY6KOtprXTLNFmqZkBWFXM6MrSg7dxWCo9b5L8l/s+EzzJ17FhofGSi
 zkrT6ZHuy35qRh0551ldzqcRMyHTDQZ3xDhvnI0aL++hs913RKtvNv+BIdJgqWw+iaHL
 Thqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=NM1LBXBKqsy2eKWHYJ/T+E7ZVwsCCavmdsrmBfyiN/Y=;
 b=TqU1rAAAo7d7b7uEocoggtPrGW32425pVLBA2pAFkNeK9dZgBw07Uus0Xl+HCAnbc7
 DGGfD7WCk9MDZYxgfa8C3PT/hSR5ApGsfTvRWwNKc567HtoZbYXB6FesPrODar5EodUJ
 rfOjzScX1FUL/BauVTMRF0aheBe5Osob8Ak5r7wmkt4gkwi1I1HYqJOkmfO/4WqOytMy
 DRgf9v3RYR3277zJiWefeJnpNYoL5ofX6fHkA0I9anosm3gGV5jG/uW07ax/ioofCLCq
 ILM3eYMEt9+nYxXVjLn20kAen+l+hg6CReTVRLO6uHimLsz81Ysvt1nuQGsr7u2EFPHN
 WDhQ==
X-Gm-Message-State: APjAAAX0XSnKuo9cBY28zyRuH2M5KWp77BGGjGiEWR8j8A49PHMzoNH2
 vq2yhJvfCIZ1FOTMDZNxg/9MDrr9dmXnx8m4KlI3Hfkg
X-Google-Smtp-Source: APXvYqyrRfQdUS+b+rY8K6lavUKzMfzYM0f/D7f0z47Jb4tud4hCxeIduG5pJxlpbFYt53+453U8ke2qelw2nStREYc=
X-Received: by 2002:ad4:40cb:: with SMTP id x11mr35727553qvp.167.1577364654589; 
 Thu, 26 Dec 2019 04:50:54 -0800 (PST)
MIME-Version: 1.0
From: Jeffery To <jeffery.to@gmail.com>
Date: Thu, 26 Dec 2019 20:50:43 +0800
Message-ID: <CAJXyS=ivRQx3D8kJ8p3eoN0CtzVu-Y1LvuPHb24CcHs2o3DWsw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_045827_605559_E8D75E81 
X-CRM114-Status: UNSURE (   3.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] dev.archive.openwrt.org cert expired
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
Content-Type: multipart/mixed; boundary="===============4363856130018128893=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4363856130018128893==
Content-Type: multipart/alternative; boundary="000000000000eb0ce5059a9ad3a8"

--000000000000eb0ce5059a9ad3a8
Content-Type: text/plain; charset="UTF-8"

Hi,

Apologies if this isn't the right place to mention this, but the Let's
Encrypt certificate for dev.archive.openwrt.org has expired (on 22 Dec 2019
21:44:43 GMT).

I tried sending this to openwrt-adm but the messages were stuck in the
moderator queue.

Jeff

--000000000000eb0ce5059a9ad3a8
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div dir="ltr"><div dir="ltr"><div>Hi,</div><div><br></div><div>Apologies if this isn&#39;t the right place to mention this, but the Let&#39;s Encrypt certificate for <a href="http://dev.archive.openwrt.org">dev.archive.openwrt.org</a>
 has expired (on 22 Dec 2019 21:44:43 GMT).</div><div><br></div><div>I tried sending this to openwrt-adm but the messages were stuck in the moderator queue.<br></div><div><br></div><div>Jeff</div></div></div></div>

--000000000000eb0ce5059a9ad3a8--


--===============4363856130018128893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4363856130018128893==--

