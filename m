Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EB21F6746
	for <lists+openwrt-devel@lfdr.de>; Thu, 11 Jun 2020 13:57:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u0a1pO+fz4as+eg68NBrcT2OYrwDKxWum+hY9zWUvPM=; b=oVY0tahjJBu+lOGqp/UPfq2JJ
	BF+DfE1pzVWpPh7eADH8nXp/guHRkyy5AklYJoXiYMcmyzkK01XRQUJKiEMciDSF+tKmjG/FQCdYA
	L/0zcrxDl1vkoNfsZjeoQ5DmugIK1qGhxQwy+b4eW/c580GFz/FRwKZDlNNHwqTSP7kuz/u34EAOZ
	eHX8esh5h6UCnxN6Fa6ltoqpyBk2lR63E2WIqCNW+TpmxnN6g/gZmM84RsVDm+ueC4/qTIWrBQykw
	GPar0+p6zalkqGApoBK319RzzEXJESpQCdvlYKuARwaa8YObgk0RZ5knBx6VxewbW022nVR9CeO0t
	40lyhN4aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLpM-0007It-Ex; Thu, 11 Jun 2020 11:57:00 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLpE-0007I9-0l
 for openwrt-devel@lists.openwrt.org; Thu, 11 Jun 2020 11:56:53 +0000
Received: by mail-qv1-xf31.google.com with SMTP id dp10so2471692qvb.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 11 Jun 2020 04:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JlcR2hvyfyCVux8thnjskx93BxEc3m1LMSQexm8obiA=;
 b=PIpy57eAdkh2E4MdhEd5/tWKjv7+/UPf4iUZ2QgL94ebQTcsAYwVYu9rGMCHfHYvu4
 ULKqeifCqVhHLQJWhrLAbRrqGrpOw4CYmjkc3EltERTp9eRkq958hoPpnIpsvAiE6Fmc
 7ySbElh0SkECBGXa0/oWWLtu2CqUiusEu42ZuBLPFFqYM1OUXU59PvOn4O6xZqMTVXav
 0+Zgu/9NyeY86WTIgalZu8diXIQbShTXVX/hRohhN94alo7W0cakAMNvPqEtQUTszMbg
 t6Vpz+IPGosz5OP9C9bWtOHT8G/Tw4CEUkHHr1as/Ut4zK1h4kyrGnoLlXvJrjrXdsQb
 EfAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JlcR2hvyfyCVux8thnjskx93BxEc3m1LMSQexm8obiA=;
 b=ksFBIOQXSUxrBdHhRyskhq99ACPQQumX7v1bihTXUhO5UYWBVuTdCsy4sUL0kD+0kT
 J4SnnIImJ5Fhzbycuf792byyRcHGyIsGLVshmHK09vZiv6QygwZXkNX2lLB4YAr3HkUD
 /vvWc8ITa7+LiE1G2VH1BEviDzuxnwcBMU96/id0iNo0xDyHupChrBfPKtwX7FlkwbD3
 B/wEOYV51SumyW2CgtUFJxtjVFHfTQ638zIOOk7pq0KbBGzz71hOHHjJw7+GXtij8vzY
 HFpPPKVKfsWoWUjoGeKQEpRnq+iRU4n8guNFUL5WRPAwpnZB+VgKFWPpsBCqm0A08inY
 jIVA==
X-Gm-Message-State: AOAM530JrJgMhFKRWdhhHRktnD8rGo0K9q+5sjDN6YNoCYuajOGnzyOd
 bxNMkL5Mh0+zuGvIr5GFjPuN3SzaTVfi2j80tgc=
X-Google-Smtp-Source: ABdhPJxSi90WNzIXNBvA+q3r1ZHZ+ZiEBz5mU5e0XZN4LfzchYqi2TPYMvCieiSLlwZAQzE2IZn8aVx7EqJRx7myP2s=
X-Received: by 2002:a0c:efcf:: with SMTP id a15mr7569184qvt.108.1591876610404; 
 Thu, 11 Jun 2020 04:56:50 -0700 (PDT)
MIME-Version: 1.0
References: <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9.ref@yahoo.com>
 <930b49e0-38f2-62b9-6f36-3d81ac6bd7a9@yahoo.com>
 <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
In-Reply-To: <009f01d63fde$dc3b6d20$94b24760$@adrianschmutzler.de>
From: Jeffery To <jeffery.to@gmail.com>
Date: Thu, 11 Jun 2020 19:56:37 +0800
Message-ID: <CAJXyS=jm0v=6cdn2z2VyZnJO+eX6ym4K-Q-BEkjyHXHqT7LxLg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_045652_086483_C1B60114 
X-CRM114-Status: UNSURE (   6.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f31 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Problems with e-mail DMARC policy,
 and other usability issues
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
Cc: "R. Diez" <rdiezmail-openwrt@yahoo.com>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============9157298018900453926=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9157298018900453926==
Content-Type: multipart/alternative; boundary="000000000000e3b56305a7cda743"

--000000000000e3b56305a7cda743
Content-Type: text/plain; charset="UTF-8"

Hello,

On Thu, Jun 11, 2020 at 6:56 PM <mail@adrianschmutzler.de> wrote:

> Sorry, but this is not us being mean, it's just the fact that this kind of
> spam protection and mailing list are inherently incompatible.
>

I don't think OP was asking for spam protection to be disabled... I think
the main issue is the DMARC warning is being picked up by Patchwork as part
of the commit message.

OP's suggestions (forwarding/wrapping the original message without adding
the DMARC warning text, switching to another patch management system like
Gerrit, having Patchwork pick up patches from attachments) are workarounds
for this issue.

Jeff

--000000000000e3b56305a7cda743
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 11, 2020 at 6:56 PM &lt;<a href=
=3D"mailto:mail@adrianschmutzler.de" target=3D"_blank">mail@adrianschmutzle=
r.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">
Sorry, but this is not us being mean, it&#39;s just the fact that this kind=
 of spam protection and mailing list are inherently incompatible.<br></bloc=
kquote><div><br></div><div>I don&#39;t think OP was asking for spam protect=
ion to be disabled... I think the main issue is the DMARC warning is being =
picked up by Patchwork as part of the commit message.</div><div><br></div><=
div>OP&#39;s suggestions (forwarding/wrapping the original message without =
adding the DMARC warning text, switching to another patch management system=
 like Gerrit, having Patchwork pick up patches from attachments) are workar=
ounds for this issue.</div><div><br></div><div>Jeff</div><div><br></div></d=
iv></div>

--000000000000e3b56305a7cda743--


--===============9157298018900453926==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9157298018900453926==--

