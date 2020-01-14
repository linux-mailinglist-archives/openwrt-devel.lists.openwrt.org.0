Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CF4139EE0
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 02:25:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bZpqtV3uSdJYgLl1d1hLKD5tUp3NtJijVlPRkW8gfK0=; b=Rar
	UjAmgMmtOHP+vuZDeYfbwbJ+no+/iOuoAwMw54BGNEt5cVTj/DG0wnMKuzSeAbc+5rV3Zd50iF9Ei
	ieac/rIDDdMPqHF317RXdo4AypXd0n3FB3Funam9Rg43VfrceKhZ6PSIl3TnppajBByUddxVD8+qq
	NQAhZJYdvPh/pDAEvQTcxUUtlhUz+g6sqYSQBD58TfQMGsPeu7FbTQ27h6JR773Nc1Fom4FvqfNvR
	o7w/dthxchld7+v+3uSfwZKpFUjQCgVNFv+cvCDI5Ykdvhi+DVJ9YsrLMBkzWhmMcX/e3HSN+NtGc
	PGocljvcYs4Dw9KNtJxehS17J0wzgtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irAwu-0001Qo-2C; Tue, 14 Jan 2020 01:24:52 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irAwj-0001QS-Pd
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 01:24:43 +0000
Received: by mail-oi1-x233.google.com with SMTP id 13so10248386oij.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 13 Jan 2020 17:24:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=github.com; s=google;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=yyJyDJVbX2IKZGamxQufb+LM+vh3FDGwakjvuDj+unk=;
 b=bkYvrwPIeDwUdGUUGfdohCq7fey6Ra1uxrrbokauqYJg/GeBB9DGZ3EG63lyQvWpEe
 Il572SxF05ULWx7jv/OGJZX2nCJEh8q7P8TYmgJPucBnjTFRVlGcE8Vn74uDKFy/bEqt
 eaC5LO6e1va/dJ39BDn1HSS+5zji+7tEBtrag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=yyJyDJVbX2IKZGamxQufb+LM+vh3FDGwakjvuDj+unk=;
 b=QjRJ/Ws4T0I2Dy8qnSpvPvfBlWLGFsQckFLTJAzosfs/rqA5dXeNuDECJQtamCfjrb
 MBpqY9zzNOd0hOGRvAP1dG0EqU1d4kYBIU8g9OVhrlsyEALjBVq9NmDmSgdHgO/bW5Aw
 X9qXfLcf3kKv93SarWVwBO8d11Yg5s3e3B3DiFqXiKwzNBc/QlPPsvrSHkFZQCNsrfzg
 xfNZLkBni8Gg7OQb06kPaU6sQdZpzNN7NnGBj/+ihshxsOl82y2cDESB0Z4bFS9DKnJF
 Pt0sJH4XpgoySpeLjnMSa76YCljrJVQIosghpltzHA9zMIErnHfgElFOa+W2DYhV00yf
 5igw==
X-Gm-Message-State: APjAAAXa6LNRsQ9DHiyAAlOiHVZOlNVpPN9VXbcJGUdz+tSohf41hWFp
 nrWz+j+LE/5Rr7JJdCJiIwoED8rhFWquv4orWy+owk7A7lmnGA==
X-Google-Smtp-Source: APXvYqxKXDazQ+GRycatGIPCrfO+sYvT+iUF+e2MeN2xZeFEtLc0H7s1CoxwWhDyLNasW858EfXaoHuFhQDvTDhwf80=
X-Received: by 2002:a05:6808:618:: with SMTP id
 y24mr14024291oih.86.1578965078590; 
 Mon, 13 Jan 2020 17:24:38 -0800 (PST)
MIME-Version: 1.0
From: Paul Oliver <pauliver@github.com>
Date: Mon, 13 Jan 2020 17:24:28 -0800
Message-ID: <CAF6mjhOK1GyQi7rYvVzsWdgqNbvzS_p=Gu7imchx_NWdC7+LXw@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_172441_840451_C2A35F94 
X-CRM114-Status: UNSURE (   2.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
Subject: [OpenWrt-Devel] GitHub -> OpenWRT meeting at FOSDEM
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
Cc: GitHub Open Source Team <opensource@github.com>,
 Chelonthia Collier <checollier13@github.com>
Content-Type: multipart/mixed; boundary="===============0685121710931093028=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0685121710931093028==
Content-Type: multipart/alternative; boundary="0000000000009f6e74059c0f7419"

--0000000000009f6e74059c0f7419
Content-Type: text/plain; charset="UTF-8"

Hey OpenWRT Folks,

I hope your 2020 is off to a great start!

In the next few months GitHub is going to be at both FOSDEM in Brussels on
Feb 1st and 2nd and FOSSASIA in Singapore on March 20th and 21st. We will
have experts on hand to discuss Actions, Security, GitHub Security Lab, and
cover any general GitHub topics you wish.

Will you or members of your team be attending Fosdem? We would love to chat
with you about how your OpenWRT mirror is going, or anything of interest to
you about GitHub, Actions, Security, etc...
Cheers!

Paul Oliver
Worldwide Head of Developer Relations
*Book a Meeting*: https://calendly.com/github-devrel
*Phone*: 919-995-3575 (*I screen my calls, always text first and leave a
message)*
*Email*: Pauliver@GitHub.com

--0000000000009f6e74059c0f7419
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey OpenWRT Folks,<div><br></div><div><p style=3D"box-sizi=
ng:border-box;margin-top:0px;margin-bottom:16px;font-family:-apple-system,s=
ystem-ui,&quot;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color =
Emoji&quot;,&quot;Segoe UI Emoji&quot;"><font color=3D"#000000">I hope your=
 2020 is off to a great start!</font></p><p style=3D"box-sizing:border-box;=
margin-top:0px;margin-bottom:16px;font-family:-apple-system,system-ui,&quot=
;Segoe UI&quot;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&q=
uot;Segoe UI Emoji&quot;"><font color=3D"#000000">In the next few months Gi=
tHub is going to be at both FOSDEM in Brussels on Feb 1st and 2nd and FOSSA=
SIA in Singapore on March 20th and 21st. We will have experts on hand to di=
scuss Actions, Security, GitHub Security Lab, and cover any general GitHub =
topics you wish.</font></p><p style=3D"box-sizing:border-box;margin-top:0px=
;margin-bottom:16px;font-family:-apple-system,system-ui,&quot;Segoe UI&quot=
;,Helvetica,Arial,sans-serif,&quot;Apple Color Emoji&quot;,&quot;Segoe UI E=
moji&quot;"><font color=3D"#000000">Will you or members of your team be att=
ending Fosdem?=C2=A0</font><span style=3D"font-family:Arial,Helvetica,sans-=
serif">We would love to chat with you about how your OpenWRT mirror is goin=
g, or anything of interest to you about GitHub, Actions, Security, etc...</=
span></p></div><div>Cheers!</div><div><br></div><div><div><div dir=3D"ltr" =
class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"lt=
r"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr">Paul O=
liver</div><div dir=3D"ltr"><div>Worldwide Head of Developer Relations<br><=
/div><div><div><b>Book a Meeting</b>:=C2=A0<a href=3D"https://calendly.com/=
github-devrel" target=3D"_blank">https://calendly.com/github-devrel</a>=C2=
=A0</div></div><div><b>Phone</b>: 919-995-3575 <font size=3D"1">(<i>I scree=
n my calls, always text first and leave a message)</i></font></div><b>Email=
</b>:=C2=A0<a href=3D"mailto:Pauliver@GitHub.com" target=3D"_blank">Paulive=
r@GitHub.com</a></div></div></div></div></div></div></div></div></div></div=
></div>

--0000000000009f6e74059c0f7419--


--===============0685121710931093028==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0685121710931093028==--

