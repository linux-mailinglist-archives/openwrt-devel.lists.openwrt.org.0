Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00022177A24
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Mar 2020 16:12:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=odwF0G1vHgMyw8FOf11yZfmeGa+TJnV8iZy0Rw8op7w=; b=MK7
	rpjito22c/39woaJvIn8TlT4MtDapbjVz26xZbo41mL5vzBKLBUIOdgxNGfM4uZu57Zctuvw8MUtI
	NlQvLOJ+qru+31DWCc9VmS5cqNcNCZCEkMN6TqPzcet305Lc7jzE02cJ8emLw9AykL3/T/+OuLAVD
	huf4rk85qjBMMHtkFEKC8epE0/HzodPiBUhDyJYR46mYCWTGrCXyhTB0z5vopcVDMihJb/fCtVvpg
	QvPhgOSVMeBZcko9HNe+1qDYS2HCxZk6rmaIumJGxan+H+TKkR8ecCdBmq5cPs1yHDOy1kB3XfhjZ
	3/WEraIA2h5iP3ryUNarTTa9LggTFdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99D1-0008E0-PJ; Tue, 03 Mar 2020 15:11:47 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99Cu-0008D7-BR
 for openwrt-devel@lists.openwrt.org; Tue, 03 Mar 2020 15:11:41 +0000
Received: by mail-io1-xd2a.google.com with SMTP id h3so3930788ioj.6
 for <openwrt-devel@lists.openwrt.org>; Tue, 03 Mar 2020 07:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenotec-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=O24PzSH7xhsHnG22/qQntgpCPUXkuNThZ3b2ZCgWthQ=;
 b=kvbrm7cWw0OzVb25QNg8qiezKzHOR8MZl5W2id33Xd3DB7qLTScFnhxTAh0PgqjJFU
 0LjLWkv+B23rEGf8SsBAEhAK0/5UXgg0zBLcrFNn95zPwvnmJ45ZMcTh1SZ+1D/9e9M7
 8eAQ3LNWF6TniVIPtmaO5lHcFcJspV74jMKXo+dqXUqjMQu+POgQ8jn4EpnT/H/AgUFj
 b5tYlrU6Xth300iCZBdFkVJ9OQdQkYpeLnKptx2EUB6fi+Uj49MFpXK6vGkqpSP+AXkb
 7f8FQqT31eXEd1HnE3FgM0S84ebt4KXw6uA9OV3FBUCyVlioa2r1cadQ4zjs23ZX7hny
 YB3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=O24PzSH7xhsHnG22/qQntgpCPUXkuNThZ3b2ZCgWthQ=;
 b=ja8EWh/DeLo7T/JWqQZI7EXnKHw0drkYQPAkomDcuJkhf29CtgBjKPmRcJv+c8yvAN
 xSC0mTpQbDTEk7NaO7xF03HzUii+kT0/21BEl6NBw8fIrwrBPwggaYZtzP1CBEXBAEl+
 ey+rWaa9VDXhNjQg7yAtp3vENk6/9Qz4M1tCkeb6eSpGv+jEMehik4Xr9GD2q+stgfBF
 gR5OOyPDkbJ8f1O6Ff+srq/EiAhohStDn/AZANgYdM0hy1JnvC/vpYjIaEHMj9/cM5ug
 nHVVNRBmQdcAgW7Z+EgyQ0r9+b5NC2ncbsTRm8kdagrYDjvluo8OtC3tfd9iLoG9H+11
 V2nQ==
X-Gm-Message-State: ANhLgQ3TBI6k84wx+A6FXHMgo8X+eoHhie9Hlk0pTz5L+Gfh8Px0MBLE
 FqmI1IdDdLGY1cNsC/xXc5HmPnuW6xieMO219OzeH7ySOWw=
X-Google-Smtp-Source: ADFU+vvq+9sWMgC3TV9q4yECw2VvkqZBqOf0+h2x7rvp2QaaW6TwxkCVsEp5sCHFXukGWc5DcV37LQUk0TYHjKtidVg=
X-Received: by 2002:a6b:ea0e:: with SMTP id m14mr4188814ioc.135.1583248298155; 
 Tue, 03 Mar 2020 07:11:38 -0800 (PST)
MIME-Version: 1.0
From: Kevin Mahoney <kevin.mahoney@zenotec.net>
Date: Tue, 3 Mar 2020 08:11:27 -0700
Message-ID: <CAEKKVUiCnieCu7HfgK7=yxSOomnV1H14em4zhmhhQeHCMLw-mg@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_071140_416531_0491CF28 
X-CRM114-Status: UNSURE (   3.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Open vSwitch integration with netifd
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
Content-Type: multipart/mixed; boundary="===============8029750259221411560=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8029750259221411560==
Content-Type: multipart/alternative; boundary="0000000000006734bb059ff4b841"

--0000000000006734bb059ff4b841
Content-Type: text/plain; charset="UTF-8"

I am exploring the idea of extending netifd to support Open vSwitch. I'm
curious if anyone has thought of doing this, or has looked into what all it
would take to do so. From my limited research, it seems that only a new
system-xxxx.c would need to be added to netifd while keeping the rest of
the logic the same. Please share your thoughts.

Regards,

*Kevin Mahoney*

*ZenoTec LLC*
720-864-4320
kevin.mahoney@zenotec.net
www.zenotec.net

This e-mail and any attachments are intended solely for the use of the
intended recipient(s) and may contain legally privileged, proprietary
and/or confidential information. Any use, disclosure, dissemination,
distribution or copying of this e-mail and any attachments for any purposes
that have not been specifically authorized by the sender is strictly
prohibited. If you are not the intended recipient, please immediately
notify the sender by reply e-mail and permanently delete all copies and
attachments.

--0000000000006734bb059ff4b841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am exploring the idea of extending netifd to suppor=
t Open vSwitch. I&#39;m curious if anyone has thought of doing this, or has=
 looked into what all it would take to do so. From my limited research, it =
seems that only a new system-xxxx.c would need to be added to netifd while =
keeping the rest of the logic the same. Please share your=C2=A0thoughts.</d=
iv><div><br></div><div>Regards,</div><br clear=3D"all"><div><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"=
ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><font face=3D"courier=
 new, monospace" size=3D"2"><b>Kevin Mahoney</b></font></div><div><font fac=
e=3D"courier new, monospace" size=3D"2"><b><br></b></font></div><div><font =
face=3D"courier new, monospace" size=3D"1"><b>ZenoTec LLC</b></font></div><=
div><font face=3D"courier new, monospace" size=3D"1">720-864-4320</font></d=
iv><div><font face=3D"courier new, monospace" size=3D"1"><a href=3D"mailto:=
kevin.mahoney@zenotec.net" target=3D"_blank">kevin.mahoney@zenotec.net</a><=
/font></div><div><font face=3D"courier new, monospace" size=3D"1"><a href=
=3D"http://www.zenotec.net" target=3D"_blank">www.zenotec.net</a></font></d=
iv><div><br></div><div>This e-mail and any attachments are intended solely =
for the use of the intended recipient(s) and may contain legally privileged=
, proprietary and/or confidential information. Any use, disclosure, dissemi=
nation, distribution or copying of this e-mail and any attachments for any =
purposes that have not been specifically authorized by the sender is strict=
ly prohibited. If you are not the intended recipient, please immediately no=
tify the sender by reply e-mail and permanently delete all copies and attac=
hments.<br></div></div></div></div></div></div></div></div></div>

--0000000000006734bb059ff4b841--


--===============8029750259221411560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8029750259221411560==--

