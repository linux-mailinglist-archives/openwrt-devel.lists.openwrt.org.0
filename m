Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03641145CC3
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 20:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O6IOPsN59ySM5V7l4/7/p43O5D6Q+ADw5nHwvuYgfKo=; b=ZR0/e9ZGFWJzFvuM8ezCxijuF
	xcPRSwuCJV9pS4ocUnaAQexQQNmeUepRQpa79yFcsS+rGB9Eyc3AIJrAFG2CXjJXWbn3edXo6zvpB
	zvUpHjXYLb/gdRr1IQqG8GSHZoz1pM1On5ZYgAHVDsoXT1u5HxGv975Z+2yOc6XphQf+F77Koy0ME
	xE+jSxAt/Llo9u+L1OkTLGw+vRuSd/BZmqdRokc9E3w2oU6YAPvKylOdGPH30O4iUHIaHYfU25roL
	Jk1lBSj5AsqGaVdlWMQoJXqjsXqABt+vZAlivegEvVQz6DWdNxQ7GORsJ6957UAZTxOa0c5p9a7li
	mqbyLYkmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuM7e-0004Y7-9n; Wed, 22 Jan 2020 19:57:06 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuM7R-0004XM-St
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 19:56:55 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i78so305671vke.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 11:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2gipKmyf+hw4dAmOcActivWIL6hN/ViF1fzuh5srtLQ=;
 b=Ms66UbuH3/eUh459bhMut/VmXBt+Oa0bhFZHtSoW2dGAgv9KrzW+Q9zDQ/Wu/VGYty
 9vnxRjPxOspxeiVXeM/K7tBRz874BMZgPvXWjP736PMAJKGXf/XW7NIdzI81m1ijXKST
 NgHyUA2T+BMvnZ+jBIio3f0cM+8/6wfoMsyx/VcD1pqVeAXd1hLqanh0/q53HKfAgkPJ
 LQhy+vaE221BjtnMZQARzYjuRz+hbRnyRuDJXcw/wp622pRDRiahLzYfLBKTGh+9EwfB
 0/+TqKzzs5MtepKf1m2WiMJdcpSoWoYPcoR1hqMVsjeR384yruyfjlMcOH9KS1ghIIik
 +GVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2gipKmyf+hw4dAmOcActivWIL6hN/ViF1fzuh5srtLQ=;
 b=hD8yDIsBSPrdqZwN11SAoYJCJNwHevDBnrL96pQSNMRsttyuHaHQg35f4fwT/gP41z
 dYsbb+Bp7j8VmUb5aJee7Or1rkF0e09C8sBJunIn/y4Yr7r0f0jrOZrt7UtQSMFq3c9C
 nMBpBnNamKQZoUKcpgov4QmsjPxkG25H9G05qRNmQVNSBYIlSta2OXU1Lev+FuChwCd3
 TlLY+Y4dBWAv5bW5f0vfv60PI4Hcflqo0cQFU2Fve7SnoTZYgi0Dz6zZjZ6UITAHyHGL
 qBA4QTZVyUF+Es9yfxB5lrWZs6GjgYEhXAOX8QCyEOoKgIhah5VBtTJiu1zSrJmvWY9v
 Yebw==
X-Gm-Message-State: APjAAAVh85VrwkFx0Mr3iigXpHb3HjFScZlX22kM5W2m+xJajmuMHHpX
 j0TL0By6sTgpW/e+IbG0tBxg1BfffVZpL6LJt8A=
X-Google-Smtp-Source: APXvYqwo83xW7j96IYd0sqWMRKIirIN7JSlC4BSHJe7flummNQ5O10BcRplN2aJKC0ULZjM74z61h2WnTrfUBsnZdCw=
X-Received: by 2002:ac5:cb0b:: with SMTP id r11mr7794241vkl.72.1579723011438; 
 Wed, 22 Jan 2020 11:56:51 -0800 (PST)
MIME-Version: 1.0
References: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
 <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
 <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
 <20200122094051.GC1406@makrotopia.org>
 <CADwgkMWVL6g_=xkGyMbK4Xj-EEfx10tQYwtF1ZgFq6x-QnhhfA@mail.gmail.com>
 <CADwgkMXayQZ5f7sLiz0dEBv4CigJS=Gchsa2xw3OTSuUf7B7dQ@mail.gmail.com>
 <CADwgkMVz=EkUrD+55u4QqGw2b3tLH8ePh5nQPrrbnngnGwE3RQ@mail.gmail.com>
 <7d754443de8da7e27c944241aca5c804bd22e961.camel@ewol.com>
 <CADwgkMXUsKVQfgUoXGFbw1HXFNtUY_ZPu=+i+2fd9y18rFLtEw@mail.gmail.com>
In-Reply-To: <CADwgkMXUsKVQfgUoXGFbw1HXFNtUY_ZPu=+i+2fd9y18rFLtEw@mail.gmail.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 20:56:13 +0100
Message-ID: <CADwgkMUURsAb7H8RHi_GTD1gFUffT26oTAv0ArwXCQmkMsQ0Jg@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_115653_956315_D29CEE22 
X-CRM114-Status: UNSURE (   5.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brunompena[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
 [list.dnswl.org]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============8356425604715832207=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8356425604715832207==
Content-Type: multipart/alternative; boundary="000000000000f0bbfc059cbfecbf"

--000000000000f0bbfc059cbfecbf
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I have just finished testing the new patch on my device.
All tests were successful and I have already uploaded a new kernel patch to
GitHub [1].
Thank you for all the comments and your help in testing the new patch.

[1] https://github.com/openwrt/openwrt/pull/2709

Best regards,
Bruno Pena

--000000000000f0bbfc059cbfecbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>I have just fin=
ished testing the new patch on my device.</div><div>All tests were successf=
ul and I have already uploaded a new kernel patch to GitHub [1].</div><div>=
Thank you for all the comments and your help in testing the new patch.<br><=
/div><div><br></div><div>[1]=C2=A0<a href=3D"https://github.com/openwrt/ope=
nwrt/pull/2709">https://github.com/openwrt/openwrt/pull/2709</a>=C2=A0=C2=
=A0<br></div><div><br></div><div>Best regards,</div><div>Bruno Pena</div><d=
iv><div></div><div></div></div></div>

--000000000000f0bbfc059cbfecbf--


--===============8356425604715832207==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8356425604715832207==--

