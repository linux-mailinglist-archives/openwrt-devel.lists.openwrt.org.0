Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB7A18F661
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Mar 2020 14:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=abcnIg9kUa0REXI3mtaHW6S298bzgtOd8re222PY8rw=; b=pXaV/x6XrCBRAXIIDP9NcsqiD
	lbtnF7VhM9p9lTHbGKXJqKbLLR4JVjgVgVaYcnYT424SY6UOzP48Kghdfgpjb1ZzqnqE82bb58wDg
	oF90YaHfrh+HZU+lhg5LdR+AjxT3QebCuf5ZnrRjYcf/C4z+jRCJE4vx0WKYVQWhaR8ge5nIhmI+Y
	VEqAYjnz6Ciioq/J6CF+yuL+k+FgeJlPSi5AtxWdMgQmUf2eQYxkUEOkQIedVq3Z4uGNiGnHQHTE9
	l94GcnoLQGk8HxmTJ3cBg9dIokqt8/3/9h59zohkAte+mezOdxWzP+JyWY2+T4eHYyWS41i+q4+T8
	kIsWPV8Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGNWr-0004Tc-1t; Mon, 23 Mar 2020 13:54:09 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGNWj-0004TB-SS
 for openwrt-devel@lists.openwrt.org; Mon, 23 Mar 2020 13:54:03 +0000
Received: by mail-qk1-x744.google.com with SMTP id o10so9473748qki.10
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Mar 2020 06:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mzC8CRnfOg94TPPeY1sSFU7wDUhUSPetyUofCHtsHfQ=;
 b=qHfPSGQjOUs9qKdTHcfCUk0o+kXpwCXPKtkJ2wkpqsUCzO4UpmpWreH6lvh89K3KOM
 hyi2RqT1+QRy8Zi5P1xjZLLSmrPT4eZtEIMXi4KAv2IFdgMwpTb75saIoxdKs17/rLue
 sN2t4tLz6u2FT1+AfwUzf5xmFmsxBW8L98nKoGoVa4K8iP2fhTEPWxNXerPzgbFU8uHM
 AH15D4jQFPYjGYjt56O2MlVjKmTNvxretPUUwpUbDqEn6bUVsf0bWnoWCkQZ8P/d+K9k
 rE/gimrwKROeni8crITnR1nRnX1E2668ze/w18+mmJRlRrcqWevnVsQsgV9JzZLb/TCG
 YmaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mzC8CRnfOg94TPPeY1sSFU7wDUhUSPetyUofCHtsHfQ=;
 b=JwZ0ynLUP5Qio+b5d12GBlLAvDhnS4XCThMyDRSDYkfTTweoHV3RvbvKnsvo76SvGl
 zIfe+YtzgrZGHXcvy9VVJRht1xIPudVtljh6bGFQpfiit27B2+VaEOGSNBrh4VzHkJ3m
 we9kFWhl3LZDHkXkuJBpYQ0olwR6a0hSv5z1+ktrMWb4QHAaHohNXCalu4m8LaMu82Mm
 I0jVz+ZLKs1aWCdIspySPqU8x+DVoTu9rCh5nCNCFSDayfuIIJdeJ4+ViYX4VfdUVq8B
 /nerr5pwwqbgxlF14mqmVgVrYgIXfLvW2yufzkIFSXwpYFF/tILs7nz5/a5An/XujWzu
 KIZA==
X-Gm-Message-State: ANhLgQ1TpIrDNC4r43ggbhpkWbtoXpijyhNoD+iSkJ+XIZcFpy7nfMAR
 r7FACI6HNmYdA/nN+o2a9iufpWnjwX1BHqrjXCg=
X-Google-Smtp-Source: ADFU+vuWG9WMdkQ/wtTDNyi1I/V5CG/iEc0heMZJAzcbuYwGU2mMdsI4ZezjtBt3jOLZQ18bjcKnyavJzbmfUdMumwY=
X-Received: by 2002:a37:4a41:: with SMTP id x62mr20549061qka.178.1584971640028; 
 Mon, 23 Mar 2020 06:54:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200320101059.19793-1-mail@aparcar.org>
 <20200320101059.19793-3-mail@aparcar.org>
In-Reply-To: <20200320101059.19793-3-mail@aparcar.org>
From: Jeffery To <jeffery.to@gmail.com>
Date: Mon, 23 Mar 2020 21:53:48 +0800
Message-ID: <CAJXyS=i6kCLjUkCtRU844_-3vJHr7=m16weJVuE4unUcAp+_Tg@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_065401_941104_12F6D50A 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/6] x86: switch image generation to new
 code
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
Cc: openwrt-devel@lists.openwrt.org, Tomasz Maciej Nowak <tomek_n@o2.pl>
Content-Type: multipart/mixed; boundary="===============3252941442082805097=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3252941442082805097==
Content-Type: multipart/alternative; boundary="0000000000009541c705a185f7e8"

--0000000000009541c705a185f7e8
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 20, 2020 at 6:37 PM Paul Spooren <mail@aparcar.org> wrote:

> This commit introduces few related changes which need to be done in
> single commit to keep images buildable between git revisions. In result
> it retains all previous image creation possibilities with slight name
> change of generated images. Brief summary of the commit:
>

Would it be possible to restore the building of a separate kernel and
rootfs? It's much easier to resize a rootfs than a disk image.

(Or alternatively, an easy way to enlarge disk images would be welcome.)

Thanks,
Jeff

--0000000000009541c705a185f7e8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Mar 20, 2020=
 at 6:37 PM Paul Spooren &lt;<a href=3D"mailto:mail@aparcar.org">mail@aparc=
ar.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">This commit introduces few related changes=
 which need to be done in<br>
single commit to keep images buildable between git revisions. In result<br>
it retains all previous image creation possibilities with slight name<br>
change of generated images. Brief summary of the commit:<br></blockquote><d=
iv>=C2=A0</div><div>Would it be possible to restore the building of a separ=
ate kernel and rootfs? It&#39;s much easier to resize a rootfs than a disk =
image.</div><div><br></div><div>(Or alternatively, an easy way to enlarge d=
isk images would be welcome.)</div><div><br></div><div>Thanks,</div><div>Je=
ff</div><div><br></div></div></div>

--0000000000009541c705a185f7e8--


--===============3252941442082805097==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3252941442082805097==--

