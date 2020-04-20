Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE041B05CB
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 11:38:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XnrNa8VsnF23n2deKEsCE0F6FQOo/FbcobDhb4l97Z8=; b=CDT
	xVi1ICwAz68jqlAbisXFNBj8kWvNKWPlx7z8G8NylVi1A0W4w4YG3/OvEBTavMu6RP5pRwB8Rkzt7
	OLljAiJrsQS8oHVP5ZO0VJYjcYTQ2/KNM6y8rimA8JA+KbVWs7hbBjRnW5J8/teIbWQXWUYmFzDv8
	G/ACn6xfi1jkvFpruRErMlcox12qjz1s65orobODTFrM62Mms4+IbSBdx757cPsQFn5Wxa97CgqPx
	zkNKKpAVMzKy53zlpwGvR2XYR5qkEHFo8H+jaW2eGLVNcDM0GHISUm9xWHlb5mCBFIQMvpy10J1NK
	0MLmV5BkPNqSiX5e9Hq2Vw00dV8ypMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQSsY-0004wq-AU; Mon, 20 Apr 2020 09:38:14 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQSsP-0004us-Sv
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 09:38:07 +0000
Received: by mail-qk1-x741.google.com with SMTP id x66so9783491qkd.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 02:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=GaWxj0nlcb9B01pOVwiS9DerKlAjin0V9ao6ZdLd2To=;
 b=hD4uv2MUjiaGmKQhbPjRcplDfDwdd4AKF2NzCGOss1eL0673mW9i8lsAQwDCWugHd9
 bH8F7Z8fePXWpoTQ6b59tu3vmrMJxM13yB44wyDCK6g/u/f16aw6CTuDZH3Yqk9V1BlE
 Ua2U9pAp1uHrzBiRLcQ8L4F/I6o5GSbmVdWRCOSYm8EGA5sJv0mBQmprvq45zz00hXjh
 KdqP35pimNhyco5z/oJqFjvqboT4fm55M53eIq9dBKeyUUUMDuBCVYTytT2HYGIqO/S3
 biU9T6J/7WW6V4WpHukkfjvkFbkr2mpkezEuj3jRWkXbDLOQ1RGJxwkiDgbKfFs6d4PA
 3xsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=GaWxj0nlcb9B01pOVwiS9DerKlAjin0V9ao6ZdLd2To=;
 b=T/zdZh0XBBdj15evsxbhyBzpEa/LjoCfMtWcCeHPAtCLcH7hn5hjuBB5IUUlunB6uT
 wdmfyebO7WWLzQ0tNVfdvRMRCASc3mqpxac8IU9iP4n0IMefGFdf+7R0ekp+mdxxjb5e
 S6IAbbKXzXB/uUxgeWoNlhgU690nqHkZpVHQmxNBzwNLkHHenoYssn4DRVOr+kpBEFX3
 WitqLjvwEHxKU2Aq8WPE4LlcsytN9f0M8uSZBIybaOtTiunM6HwXvQlmsZOZ0GzVgfAB
 IH2/f+Z4dpFfrMkiUvpq+PSPtX8/E6JpVnT+o0r69YkF8bJpzXlao1c/KtnR5hmRAkJ1
 tmVA==
X-Gm-Message-State: AGi0PuZrTo0WoPuKKcO5ypYL3s6aFMPtw9q3AudQ0cv22flCMFH2acs7
 qZuUAbrKP0Fm3Lw/EKgwNnYIu9PxyUIzjQsdSALlyx5S
X-Google-Smtp-Source: APiQypJrc4Bcc+M45bZQ892zscqi6Bq5cShM3NtwC9CPMClOn/IPR6U7je+Ac/gz26ZMT7/pimV4AxYGxQtWjXcL1JY=
X-Received: by 2002:a37:6cc7:: with SMTP id
 h190mr15125683qkc.115.1587375483610; 
 Mon, 20 Apr 2020 02:38:03 -0700 (PDT)
MIME-Version: 1.0
From: Jeffery To <jeffery.to@gmail.com>
Date: Mon, 20 Apr 2020 17:37:52 +0800
Message-ID: <CAJXyS=iTV5LHxFEN++41CZuHBVkOXLrO33Aeg7QiWweRW6bQTg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_023805_943485_C74AE52F 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] Build variants and Build/InstallDev
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
Content-Type: multipart/mixed; boundary="===============5197081745067716853=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5197081745067716853==
Content-Type: multipart/alternative; boundary="000000000000d3685e05a3b5a777"

--000000000000d3685e05a3b5a777
Content-Type: text/plain; charset="UTF-8"

Hi,

I've noticed that there are a few packages in the packages feed that have
build variants and a Build/installDev recipe, e.g. libarchive,
libmicrohttpd. With the exception of ffmpeg[1], it appears that what is
installed by InstallDev is determined by the last variant that is compiled
(i.e. each variant's InstallDev overwrites the files installed by previous
variants).

I'm not really sure what is the best way to address this issue:
* Should at most only one variant's files be allowed to be installed, or is
there a way to allow for all variant's files to coexist?
* If one variant is to be prioritized, are there generally-agreed rules for
prioritization that can be followed (nossl vs ssl, mbedtls vs openssl) or
is it up to each package to decide for themselves?
* If another package depends on a specific variant, is there a way to
ensure that that variant's InstallDev files are present?

I don't mind working on a way to resolve this issue but I'm not sure what
direction is best. Any help would be appreciated.

Thanks,
Jeff

[1]:
https://github.com/openwrt/packages/blob/99e4842e3384107f914d32457889b1eedea9b89a/multimedia/ffmpeg/Makefile#L716-L738

--000000000000d3685e05a3b5a777
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve noticed that th=
ere are a few packages in the packages feed that have build variants and a =
Build/installDev recipe, e.g. libarchive, libmicrohttpd. With the exception=
 of ffmpeg[1], it appears that what is installed by InstallDev is determine=
d by the last variant that is compiled (i.e. each variant&#39;s InstallDev =
overwrites the files installed by previous variants).</div><div><br></div><=
div>I&#39;m not really sure what is the best way to address this issue:</di=
v><div>* Should at most only one variant&#39;s files be allowed to be insta=
lled, or is there a way to allow for all variant&#39;s files to coexist?</d=
iv><div>* If one variant is to be prioritized, are there generally-agreed r=
ules for prioritization that can be followed (nossl vs ssl, mbedtls vs open=
ssl) or is it up to each package to decide for themselves?</div><div>* If a=
nother package depends on a specific variant, is there a way to ensure that=
 that variant&#39;s InstallDev files are present?<br></div><div><br></div><=
div>I don&#39;t mind working on a way to resolve this issue but I&#39;m not=
 sure what direction is best. Any help would be appreciated. <br></div><div=
><br></div><div>Thanks,</div><div>Jeff</div><div><br></div><div>[1]: <a hre=
f=3D"https://github.com/openwrt/packages/blob/99e4842e3384107f914d32457889b=
1eedea9b89a/multimedia/ffmpeg/Makefile#L716-L738">https://github.com/openwr=
t/packages/blob/99e4842e3384107f914d32457889b1eedea9b89a/multimedia/ffmpeg/=
Makefile#L716-L738</a></div></div>

--000000000000d3685e05a3b5a777--


--===============5197081745067716853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5197081745067716853==--

