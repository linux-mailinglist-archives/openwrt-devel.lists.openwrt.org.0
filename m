Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED08810A069
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 15:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=h/cruRxBBF4rudHL/uepIG9j+9Q84cLPW+68f7ots5U=; b=D15
	6NFitMfek/wt7sNOwWvffW+FoWeOGQ/QYRNnNGKa4w5al9FX1tACldwVuAV5/2a5kdNIfr3LAzRfO
	hbVm0wX+xSEdNCGuIYWQywvoiVlBHrdQD+7VpWyg9UkuQzBmW/B91kN2A9+DuKEfEb0t6d88YJhFz
	YgjgVIGm5zQC0+Igy7Dby/Wj6/afDs5MGQODN7/MaooMD+TpLU7WmINLTwYT+jBP7ic+Q3Ig2oRfc
	yuOxbnWb4ENUzpDNh1Gims1zZMcYijl125oM3q/hj2BS+SgoJEFfvnNzzb/j/D50LnJeiVzPT86kZ
	8W8LDK+LYfqMKJfM8pqqdPrjlO6qCoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZbx4-0000Ur-2b; Tue, 26 Nov 2019 14:36:26 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZbwl-00007x-O8
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 14:36:09 +0000
Received: by mail-il1-x136.google.com with SMTP id f6so13827794ilh.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 Nov 2019 06:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=HBEx0HEQzYhhDSYHmVBZoE/wMhJ8+sbgb5a5x3TjpFs=;
 b=A3MlwFhmADokoT0NFTygU4BLLoK3POGIq0q+x7jwvHt5Nr2LH+8gooO5AKpdTamEBc
 5undIA+XhnChj1SVA+gYzqO5wI2iXG7ncTncl5xsh0yg70Uo7V43jKgbjY9TBzXFIgN2
 t5c1OU+WBnt27wq+d1V+e4mFlONDakbTbeLIqGNlyj1IQD2dhAbnWG+IKnyAw1JkjGEu
 RcDBI1wSCZ16jk6lhT4HrENQZYB3MmPhPXdQToo/+SmUi04HL0Z/w3obGXhHllCkHM70
 KXVx6K4AlWAuf1IL8JyFnw9H4JrPFiYA/toiSJycTFCM8qEGK8R0agaL+LNFeUM8Sod2
 PLmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=HBEx0HEQzYhhDSYHmVBZoE/wMhJ8+sbgb5a5x3TjpFs=;
 b=EFNMbSAk+tX4sWJHBKxqOnmG35iqRQgdAcPpwAV17B/BHoSr5p/3LyyRlT5XYP++uG
 3PFh1lSdcxZYRi5M4Q7x97KMWkVnNf2ufLEbCrDmS/QbBcKPBCKRL2oU2PfHn4Yh5lDl
 mxgRFKF2c7cFeOKX23h/ZdiMvwfcetr1HVjW6Jdp3cqX6GhRmGJu0PrYxOIUt9+Qu/YU
 qPaLF0bq+W4a1R+lo45hE886TvwsNxQNWAgJZ9ErH0+LK6CkY/tc2fbEuvw4WZlE2pAn
 icG/HQo66ENM36rvopxWSQF0zyzVhxhw1egXz2fQ/3tJZe9ZJB795gDDrsY1FwVaXG+Q
 IzUw==
X-Gm-Message-State: APjAAAWUdwCzci8rQuu8QTR6DVbbr5plb3Ag2DHcZfL6thYChRSKO8LK
 nJrKgJXoopctlU7U01h1v5sytkF251o9kwLjAZEc5fmWNQS4Vg==
X-Google-Smtp-Source: APXvYqyRS5a0k04rPG8wZsGR7VDAXOzi2/hf9EGru07JREUYo9Jf3Jz18Pk/eyRHj4rTdA1XVKZsKBw3C6j/9TST3Ko=
X-Received: by 2002:a05:6e02:d92:: with SMTP id
 i18mr37701821ilj.20.1574778966119; 
 Tue, 26 Nov 2019 06:36:06 -0800 (PST)
MIME-Version: 1.0
From: ql li <gxfclql@gmail.com>
Date: Tue, 26 Nov 2019 22:35:54 +0800
Message-ID: <CAOK+PsK1b=DFwmgSEFNTX-8tN5UbwLEXsQZkJb6g9616qbf2Xw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_063607_799677_D7FB9223 
X-CRM114-Status: UNSURE (   3.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 1.0 HK_RANDOM_FROM         From username looks random
 0.5 FROM_LOCAL_NOVOWEL     From: localpart has series of non-vowel
 letters
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gxfclql[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Can SRv6-net-prog be ported to openwrt?
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
Content-Type: multipart/mixed; boundary="===============5773621625941577165=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5773621625941577165==
Content-Type: multipart/alternative; boundary="000000000000e01bed059840cc5e"

--000000000000e01bed059840cc5e
Content-Type: text/plain; charset="UTF-8"

Project source address: https://github.com/netgroup/SRv6-net-prog
Hope to add to openwrt
thank you all

--000000000000e01bed059840cc5e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:nsimsun,=
monospace;font-size:x-small">Project source address: <a href=3D"https://git=
hub.com/netgroup/SRv6-net-prog">https://github.com/netgroup/SRv6-net-prog</=
a><br>Hope to add to openwrt<br>thank you all<br></div></div>

--000000000000e01bed059840cc5e--


--===============5773621625941577165==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5773621625941577165==--

