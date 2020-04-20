Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1621B13EF
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 20:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dfDF2V6vwR5QziZcGXwZK/4F83U0Hnl2rRnSqMME3vo=; b=Yt8RN8WJ/FJyiQdxNldu7LRuA
	U2nO21ZisduYfhn09iSyH3XW2Tq6vMX9cc2Db5fRBfwiU2rTQdA/YzSw5koJk22VGToBa+zeuigmR
	BvFZAkfN+mY7EBhZ+yW2T5Y4iuQPDTiq4UUqSQmnmCJdfQk25TIzNI7EMVlMx1MWzB8PPO5+93P3b
	UUJbzzxoPpAVsXcEzCJ3bamPd2msF1IBefHl3nGj9YGtE4IslckWI7yjEbGBevw8YBgGutFPzHt9N
	YRBO24FmWg6XzAf7ldhoCJlrBE21vRuA6sF5YtvX+fyS45afYcd5a9zS3oRfqc3PtQ9pylGh47RsE
	gIEdTci1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaos-0000T8-SC; Mon, 20 Apr 2020 18:06:58 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaoj-0000S3-R8
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 18:06:51 +0000
Received: by mail-qk1-x734.google.com with SMTP id j4so11648884qkc.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr 2020 11:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hzCo+0JzCWBFBWw2JbsIJI2aXnfkYzEh69wzz36tZHM=;
 b=HPdxLGi+JCjihg/XvzmCxOMdH/6oWo9u8c4blf7gax8qAnhbSrw0BTECkGVwRj7IRT
 i860Xb6xtnhWeM+La84lsAfiUwZbqPxSIf5GxcD9kDNp821GSPhA1j6JzzWWD7yYEMJJ
 X1Nbi6frUCnuQudsf8TcLLBliwGOBm0hmcvMUCG64l1xgLiy91AJStki0YDUqPnfIp4M
 XVJ1BpapyrHQ7E5/ZErUcKDLd3wab0kl3t2uiNT/wxvmoDJZDOtITffNoAEKpLHo7vXZ
 bROfZtVa6Sgdw/q8TyjZP9VJd1gn+223mzIz786mxYQ6LwqSuvcQXRl+HQYE6QLgIJgI
 AydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hzCo+0JzCWBFBWw2JbsIJI2aXnfkYzEh69wzz36tZHM=;
 b=VOD8IG1ZXzNx6uA0HDU4pshetVYVxIdhuAnItndGO/FgZQ29omD21004mWsmQRjssR
 d5nqO1GVYVcyM/KmGAY5+ZmMZTZZ5p5gAQHy8BfFFtGIxj4LSIpF5sdM86yY/g5/pI5e
 rWSPeVFEM3Si7mvGT6HuugGnSJkO3+HbrcXgxSd4njVCN1POb/wMmzkFp6uXoM56kiHT
 /y7itS6+kFtckQ2At+KXxsFcowps1TXD3zlg+0oJ11YOOhJQD6SDBdC3ecBZgiqymLVC
 Fz0OpRrKE0zEOnxeiEz9K9mOPbs9Tl1YWyd579VL9uuJ4S80hEvnxZO+o8dKx8mmaxka
 Ng+A==
X-Gm-Message-State: AGi0PuYc+c3LgGLJRD2B8GFy61BNP3zVBOTUWxUTIcxpAcHGsR4fbPda
 LbimLHljAnkA/Ea9g6OrLn6iQXCQSM4lPYo09OmCQZD2
X-Google-Smtp-Source: APiQypIdl2oVM9G9Da84/DhiPkWfZn+cl/6QnmwIa/FQgzu9gXUODFGd+adpjcg/0/CAJ5wTutntaCfMrqsIHSyvnsg=
X-Received: by 2002:a05:620a:796:: with SMTP id
 22mr3323511qka.247.1587406008698; 
 Mon, 20 Apr 2020 11:06:48 -0700 (PDT)
MIME-Version: 1.0
References: <CACthiCc65KKHFiucXk7xyy+Nrp5Mjne=g4SrbX6RFUc_xJroDA@mail.gmail.com>
In-Reply-To: <CACthiCc65KKHFiucXk7xyy+Nrp5Mjne=g4SrbX6RFUc_xJroDA@mail.gmail.com>
From: Jeffery To <jeffery.to@gmail.com>
Date: Tue, 21 Apr 2020 02:06:36 +0800
Message-ID: <CAJXyS=h8bosxsrL4RqUiqpOWmk_fvqZfdXdDZ5W8x54bRszG=w@mail.gmail.com>
To: Marcelo Pacheco <marcelo@m2j.com.br>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_110649_881374_9588ED63 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:734 listed in]
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
Subject: Re: [OpenWrt-Devel] Bug on procps-ng-skill OpenWrt 19.07.2
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
Content-Type: multipart/mixed; boundary="===============4337091785358325372=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4337091785358325372==
Content-Type: multipart/alternative; boundary="000000000000434b6605a3bcc309"

--000000000000434b6605a3bcc309
Content-Type: text/plain; charset="UTF-8"

On Mon, Apr 20, 2020 at 12:28 PM Marcelo Pacheco <marcelo@m2j.com.br> wrote:

> In module procps-ng-3.3.15, source skill.c, function check_proc
> char buf[128];
>
> This buffer is too small to read /proc/<pid>/stat
> The code requires the whole file to be read:
>          len = read(fd, buf, sizeof(buf));
>         if (len <= 0 || (size_t)len >= sizeof(buf))
>                 goto closure;
>
> Fix I used is to increase to 256 bytes.
> Worked for me.
>

You may want to open an issue/PR at the packages repo:
https://github.com/openwrt/packages

You may also want to open an issue/MR upstream (
https://gitlab.com/procps-ng/procps) or explain why this issue is specific
to OpenWrt.

Regards,
Jeff

--000000000000434b6605a3bcc309
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Apr 20, 2020 at 12:28 PM Marcelo Pach=
eco &lt;<a href=3D"mailto:marcelo@m2j.com.br">marcelo@m2j.com.br</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div dir=3D"ltr">In module procps-ng-3.3.15, source skill.c, function=
 check_proc<div>char buf[128];</div><div><br></div><div>This buffer is too =
small to read /proc/&lt;pid&gt;/stat</div><div>The code requires the whole =
file to be read:</div><div>=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 len =3D read(f=
d, buf, sizeof(buf));</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len &lt;=3D=
 0 || (size_t)len &gt;=3D sizeof(buf))</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 goto closure;</div><div><br></div><div>Fix =
I used is to increase to 256 bytes.</div><div>Worked for me.</div></div></d=
iv></blockquote><div><br></div><div>You may want to open an issue/PR at the=
 packages repo: <a href=3D"https://github.com/openwrt/packages">https://git=
hub.com/openwrt/packages</a></div><div><br></div><div>You may also want to =
open an issue/MR upstream (<a href=3D"https://gitlab.com/procps-ng/procps">=
https://gitlab.com/procps-ng/procps</a>) or explain why this issue is speci=
fic to OpenWrt.</div><div><br></div><div>Regards,</div><div>Jeff</div><div>=
<br></div></div></div>

--000000000000434b6605a3bcc309--


--===============4337091785358325372==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4337091785358325372==--

