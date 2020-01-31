Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167F014EA4B
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 10:55:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HG8SH2mKBOb7yg230IhQ4KIkIEr0knKSbERZBJaE0SE=; b=DFKM2NwKRYz4rC
	bzGMDiKSf59AwI3+Jm1G+1cm5OJ1hk0tVF3grc0kfUfquwG+BszcDHPZHp/VZauxP3ezTjXdZOKYK
	LI1RRJXOWL/EZxcuOQ52otFOlP4xDYUl90yQhACMysjklVFvEwynO1nJ7ZQ+OEtHGgLVKmKWbGE6Q
	oGLXv/qo+03DhpcmpJ9duOIVFQ3Mo6QrmxDbqvZTCRQbGaPrfrfK5ERn4gT+anrdhA6dWrlELMYch
	QTEAa68G3oMAGdN6NV262SH+FYpqSb8Fw9TgB/iwkD/vpwTjD+4uQPqnpeS3Y+T0RKUxWKU53sC/v
	ZUcRovE1cEFVWmsn6bIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixT0f-0005vd-Mg; Fri, 31 Jan 2020 09:54:45 +0000
Received: from mail-ua1-x943.google.com ([2607:f8b0:4864:20::943])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixT0F-0005k6-Cs
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 09:54:20 +0000
Received: by mail-ua1-x943.google.com with SMTP id u17so2311654uap.9
 for <openwrt-devel@lists.openwrt.org>; Fri, 31 Jan 2020 01:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QM6mVp1Jyr3FdhI6Rexe6Y+IaYaPI47Zycj2URqYH74=;
 b=LznqjSMHVickk+xMGBv9/PFWUo2dpv68LWKBn00FzzM5zseT1KrMupUHJeDCWoh9mr
 4iuBAXuRux9z5ajfTSfxUPUBksV+7ZNRv4W3VbpwcpQIhOtry9E3ukEZMPzeS4tF+0xp
 K19sqVVYvV5wHGyNwUdGXCswc/XXGrCYyu0nCb4IcbT6EoKa1GamGe7tHVGVl1P5q5Nr
 wjN6GOMctt8WmU1ccNmslfe4F6tKScnjatgpNFEdBS1tX4w9H2FsDxy2rG4Z24dBzmsp
 7vO8pl26jlrQXBh3oYdxpI6Ex3B1t3r/pRMr8ti6YaC0DXEUVUUoyjW6g+uBvX1y9Ot3
 fasg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QM6mVp1Jyr3FdhI6Rexe6Y+IaYaPI47Zycj2URqYH74=;
 b=ISz4jUqN6mM4lcFNQl6ZSPaYJt0Q+84wSY1UyKpjiTmsCFBEaKOGf7EAIbcUWcQbdo
 zPbByMPeASefTxV/kJrzA9uGXPsjyWRMjCCV+pYJpP72GLGbsRILdmtHqG0OWf69dmMH
 w7bMEHeEagU83Q6FdGgk0VgmEPz/bh5lPYTerSPnUAE1AzZNptjQYzNjgJxWvaS+9enJ
 2uJOsF8Mzq09mR40yJfmheyocXK96QTOKA4cMydLqYlEubXuxtFuJ7TZJbnzwZuMyKKm
 Pm/Cf1KLpIA4Y4i3wPfBZbIHqUyNor8mkPP3z1gKEBKNUmcDL7MLIJ2bJz+g93sXY/kE
 UBkQ==
X-Gm-Message-State: APjAAAU/qjX7DUaAD/A8vu2Ckj9QLUY3/wiJrUVzTidqBox9lZcSgvQR
 Q9xSW9qhcQPDTr92Bp75lq5bJVs9xAD1Cj/0kQ==
X-Google-Smtp-Source: APXvYqyeCtc1pu3lhYqwUgIji3A5JPIxlDSrWGkcI5CJouL9SOrygoGabxAOh38Lyw1/jGvI+MmhJP+xoOqgMQTuoYI=
X-Received: by 2002:ab0:7219:: with SMTP id u25mr5598588uao.10.1580464457059; 
 Fri, 31 Jan 2020 01:54:17 -0800 (PST)
MIME-Version: 1.0
References: <20200130200345.31741-1-rsalvaterra@gmail.com>
 <c9cd9283-7a06-72a5-692a-6a88da7110c9@nbd.name>
 <CALjTZvbtnOM3muXCEyEQqy-yvBVqgccG1qu7kRSvuzwiLYaf5w@mail.gmail.com>
In-Reply-To: <CALjTZvbtnOM3muXCEyEQqy-yvBVqgccG1qu7kRSvuzwiLYaf5w@mail.gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 31 Jan 2020 09:54:05 +0000
Message-ID: <CALjTZvYajGfc5w1BbtjpcXW39wqgVxbdqztS96ZikzB4jNqzoA@mail.gmail.com>
To: Felix Fietkau <nbd@nbd.name>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_015419_456755_76006C3C 
X-CRM114-Status: UNSURE (   5.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:943 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC/RFT PATCH] ath9k: implement kthread
 entropy collection for AR5008 and AR9002 PHYs.
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, 31 Jan 2020 at 09:06, Rui Salvaterra <rsalvaterra@gmail.com> wrote:
>
> Like I wrote in the forum, I don't have (yet) AR5008 hardware to test.

And I just ordered an AR5BXB72* for testing purposes. I can configure it as AP
on my Turris Omnia.

* https://www.aliexpress.com/item/32356022951.html

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
