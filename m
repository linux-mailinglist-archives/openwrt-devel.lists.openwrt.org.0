Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0ECA0136
	for <lists+openwrt-devel@lfdr.de>; Wed, 28 Aug 2019 14:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RIWq3w707z5uiK1uUuOAr4usJsK+eTVYEA6o4YbIHog=; b=Xxv
	QRTbBhkM55SL/NZb22eF8nrtW9gUpzf7j/vWM7QoHUk22ZY+j4AwmVNPOlk2eIPJ3AKj7j8qG96lW
	5SN+LMcbXpBaifgdIdVinkLbdEVZZHisy9PaCm5zbQiu+zqODNpUrcLtQBHPHe3ehtquj6NUYyO+b
	KSzJd5D+GC6tQfzUzW1GMhmIgFih8wSZoVvwzxYVNweN8CNeHZ7hRPIjlSLxiylxC18lqjCDJgq7I
	eCK7ZmESv1Im7O3aq/khjkTFRMEea/s3Aex56dEtcwhsV3cuVirrRX67oNEehH4HzGevWCydYPCYP
	MJ1Tw89xFoowAu2WwaepFUipMi32U1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wdo-000823-Ad; Wed, 28 Aug 2019 12:01:32 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wc4-0005YS-4p
 for openwrt-devel@lists.openwrt.org; Wed, 28 Aug 2019 11:59:46 +0000
Received: by mail-wr1-x433.google.com with SMTP id b16so2200811wrq.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 28 Aug 2019 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=h5kLqdLjbJQFzfYObepMa5KeTshU1uIfKsn7NkJKE8w=;
 b=cvnbNWhlnN2YT1iWyyOmFWzR3KepLIHgDT/Exh3DGFhG8d5V6OpmNLu5ruMqJnIauH
 g9HuwVMWQj4dihm3mjYW0t8HCwT48pIerz8oHYzMqt74yNbq7Wualz0fqRiP5fIFgq/X
 ubvBvwxHi0AyimL+s3q12ndY/J0g0wXn4HZnKfngCxXoHVaKEErTDe5r+08opO8sEATM
 HJEt3kUP8KNRw5dlLSsX0AnJofYcMg4rzwo4jVQqSEASsIHYVxHkZfRSrg91ZQJFJsgL
 OC3yWj8IWg4a+gFvHUpagws2Xd/QH1BZHaPakwNz7HMkUeACjBU3eyMEz+ftYdGnO7lc
 t/Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=h5kLqdLjbJQFzfYObepMa5KeTshU1uIfKsn7NkJKE8w=;
 b=BB6NUCPKELfQdc364Butr6Lcrlsr+IrSxsqWQ+EgOEHadbTS+f/mlYan6LBYKXKP3p
 0h8rhmKXnIWZr/1eQfbbIFrASupttBRedR/OnNJ06eQnNcs8sICO8gzZ2qOAsc66VoeG
 k6n36X+5pD6m7VhdS+ObOS4s/kXZvGxk4jUmWehi0mROZcAbt8A/IRmNYJU8Fk0QGvHl
 Dy4yAuMjBU0TU4V/Fh1Jnu5LM7oNCHQ5n7nAtzytI66n7LoIZK2vYGSttOqtRjnpBxs6
 2ewXGzS6H1Qnr2Oc0ND/SWAkxS3GUH6vtvRKgfkUcEPb2zWbOqY8BqRH52S/DxnK27Yx
 hIOg==
X-Gm-Message-State: APjAAAXjkdjPiPZUEVm6s9Lh03BrEggMxqXAbsfK/hCPJOMvVMXo8tmX
 xNMki9AaxRaXc8E9wDf6/kFfr9ieX6X4S7iBzjdUMw==
X-Google-Smtp-Source: APXvYqz3eyQf5/PconS+9TRJLY2gPiqsoSEqu9KSN311s9a79oKkc4WVvGjjJ71ILOxThECYWk4mv0k9ufvcqNCceUc=
X-Received: by 2002:adf:8444:: with SMTP id 62mr1001970wrf.202.1566993580995; 
 Wed, 28 Aug 2019 04:59:40 -0700 (PDT)
MIME-Version: 1.0
From: Bahram Sadooq <q0462q@gmail.com>
Date: Wed, 28 Aug 2019 16:29:33 +0430
Message-ID: <CAE61QTkvVcdYoNGMSp8XuuC86F3VL6pZZ5JZhLenLH6t9HXnyA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_045944_471986_8827504C 
X-CRM114-Status: UNSURE (   2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:433 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (q0462q[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] (no subject)
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
Content-Type: multipart/mixed; boundary="===============4694296280697874746=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4694296280697874746==
Content-Type: multipart/alternative; boundary="000000000000c2b85a05912c1f25"

--000000000000c2b85a05912c1f25
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

2LLYqNin2YYg2obbjNmG24wg2LHYp9io2Ycg2KfZhtqv2YTbjNiz24wg2KrYutuM24zYsdiv2Yfb
jNivDQo=
--000000000000c2b85a05912c1f25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9ImF1dG8iPtiy2KjYp9mGINqG24zZhtuMINix2KfYqNmHINin2Ybar9mE24zYs9uM
INiq2LrbjNuM2LHYr9mH24zYrzwvZGl2Pg0K
--000000000000c2b85a05912c1f25--


--===============4694296280697874746==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4694296280697874746==--

