Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C003D2D68
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 17:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Mime-Version:Message-ID:To:From:Date:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cND+RAx5CsaDy9lsZNbftG7lzU3H6MfMFZW30kZOrmQ=; b=L3iX0s002yDzehK1dleRNc7vuu
	jQcxT/Qcwk4blpqVVyIDA1tsVygrIK61vtBg8dNM0iYfvuL0VI2aUq9hZLrp+OeBZK0pdyVOPW1wt
	399R3xC7HWN2g0bp2VheK2yNR0EpW0SIqe4QGobDVXd9BAyIJeIZl0xxCgOLs9FvgsGvZwYNAJOz7
	ZDD23iXIJDeVo1FRW6rJ/XP0r4CUbqztj6PmP8NxAljzL7w/K7Tl7gvGLOAffBrjtAMDZDDfza3LK
	v7W0lCYJvgE5hh9j7Nv8iLq0MnONpeVzOQkEBAF4x/WL0s1vDv0aGZPOah2y2a4vvs6I/U9UOx7C0
	9nvF4sFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIaAd-0000Rr-Uk; Thu, 10 Oct 2019 15:16:03 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIaAV-0000P5-DP
 for openwrt-devel@lists.openwrt.org; Thu, 10 Oct 2019 15:15:57 +0000
Received: by mail-qk1-x742.google.com with SMTP id f16so5917347qkl.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 10 Oct 2019 08:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:reply-to:to:message-id:subject:mime-version
 :content-transfer-encoding;
 bh=0usqfXf2VEaPEKW1PEneSk4VpI8iWs1d5EPwXuY2d0I=;
 b=R73FNkFM/oxilASH0yqCAwk9j+axer2FFjVDDJfUp2XIcEHsTb94Whdor2f6kUEU66
 z1m56Vyqnnan3fKTJgyubiQQ2nH903BtAtTH54wTId07Zs8J9QyemSM0hQrXrpl47wpG
 N6TpO5LE93k/8IwC7zEA3iSSO5vD4Jo2kCWJsiW1hsRkSY5DLjyxwzIqlGLCVVNcgAn1
 fbHT5USydLCXYoJ8QT3k4PIjTSStm08JyMJO35YdvlMnfN8i+46JdDgb6wBYkCaTKaYw
 7fC1f9qSR0Zj3abwNcp5+KWu7pNr4tf+5wHKCWa+8/YEHuuP+bi8wVlo8/XsKRSmog7A
 /BMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:reply-to:to:message-id:subject
 :mime-version:content-transfer-encoding;
 bh=0usqfXf2VEaPEKW1PEneSk4VpI8iWs1d5EPwXuY2d0I=;
 b=N6/zjaG21DFEuNU+/L4OmlSZ11QkRiXqjy1eHsDSOYFIQKT7hex7arcGHm43GSkrGp
 PdmE6XbPnHPZkiyakhjtDKpEKLEtaslYUZsHDD5/SoHMD72vBySc9PK572U/Q6AvclXJ
 OGzf9zRyYdbOKmBmUp4tsPm/eBtOml5DGZVVNCfLGeWoXFmze3HNNFN/61PQ/syoTBT+
 T0QRXLN+tOWodGDNPxC6nCmBke8dR4klXhHDunE4Zf+8JMHQ1FCbU+WUenfya8nDPWnH
 9KKTJBhRg6K1rv8lyRr3DHDZsrE9wULkpXn0KNiUlDhdceNpK0KSbNCSZvUwhio7Y3fZ
 KOuA==
X-Gm-Message-State: APjAAAWsmcGkfN1eNuj5Zs8Rlwk5sCspQWEVEOEbm+KsdvG2liZfNBCL
 tJRtX6iGA6+eMxJfcw4ZeGmEYWtg7tocBg==
X-Google-Smtp-Source: APXvYqzQeu0aTWdWAefBXj/YvEA387lUn2P9JsyrSfnvBGQWMpf6aAphEllfyblitD964Bbn6R61mg==
X-Received: by 2002:a37:f90e:: with SMTP id l14mr10623232qkj.40.1570720553204; 
 Thu, 10 Oct 2019 08:15:53 -0700 (PDT)
Received: from gmail.com (ec2-52-4-214-143.compute-1.amazonaws.com.
 [52.4.214.143])
 by smtp.gmail.com with ESMTPSA id b22sm2628101qkc.58.2019.10.10.08.15.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 08:15:51 -0700 (PDT)
Date: Thu, 10 Oct 2019 15:15:50 +0000
From: Alex Bill <alexbill944@gmail.com>
To: Openwrt <openwrt-devel@lists.openwrt.org>
Message-ID: <SalesSequence.9000000961.27448.2187f3bb9.smtp@amsofttech.freshsales.io>
Mime-Version: 1.0
X-FS-DELETE: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_081555_483671_A5E37879 
X-CRM114-Status: UNSURE (   3.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 1.8 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alexbill944[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (alexbill944[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alexbill944[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 T_KAM_HTML_FONT_INVALID BODY: Test for Invalidly Named or
 Formatted Colors in HTML
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] Donation for GitHub Openwrt
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
Reply-To: Alex Bill <alexbill944@gmail.com>
Content-Type: multipart/mixed; boundary="===============5970589914398510707=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5970589914398510707==
Content-Type: multipart/alternative;
 boundary="--==_mimepart_5d9f4b26cfbaf_172abb230d01047182";
 charset=utf-8
Content-Transfer-Encoding: 7bit


----==_mimepart_5d9f4b26cfbaf_172abb230d01047182
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hello Openwrt,

We are a small business impressed by your open source initiative on https=
://github.com/openwrt. Our management support different open-source proje=
cts under a limited budget on a regular basis. You have made the final li=
st.We are looking forward to supporting you for the year ahead-either thr=
ough monthly or quarterly donations. Depending on what you prefer.Please =
let us know the payment mode that will work for you, so we may proceed. W=
e are hoping you will accept our humble gesture.=C2=A0  =

Alex Bill
Blogger=C2=A0|=C2=A0Internet Marketing

e:=C2=A0 [http://amsofttech.fstracker.io/email/track/click?hash=3DeyJ0eXA=
iOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7Im11c3RoIjoiaHR0cDovL2FwcHJveGV=
uLmZzdHJhY2tlci5pby9lbWFpbC90cmFjay9jbGljaz9oYXNoPWV5SjBlWEFpT2lKS1YxUWlM=
Q0poYkdjaU9pSklVekkxTmlKOS5leUprWVhSaElqcDdJbTExYzNSb0lqb2liV0ZwYkhSdk9tR=
nNaWGhpYVd4c09UUTBRR2R0WVdsc0xtTnZiU0lzSW14cGIyNGlPaUl5TlRBelppSXNJbWR2Y2=
1sc2JHRWlPaUl5TVRnM05XRTBPV1lpTENKa1pXVnlJam9pTWpFNE56Y3haVFpoSW4wc0ltbGh=
kQ0k2TVRVMk56WXdPVFE0TVgwLm0zYlZhelhCMUEyTUFtT0NaN2pxOFdCNjVHcHFYX3hrX1VI=
ZjZLRzVNa01-ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SmtZWFJoS=
WpwN0ltaHZjbk5sSWpvaWRHOWphSFZyZDNWdWQyRjZiM0pBWjIxaGFXd3VZMjl0SWl3aVkyRn=
RaV3dpT2lJeU1UZzNaV0V6WkRraWZTd2lhV0YwSWpveE5UWTNOakE1TkRneGZRLm11TEJQNmg=
zZnR6bzdDU21qMThvT3hYbmJ2VGxlYWZGMTAtMFB2S3RkbVkiLCJsaW9uIjoiMjc0NDgiLCJn=
b3JpbGxhIjoiMjE4N2YzYmI5IiwiZGVlciI6IjIxODhhZjM0MCJ9LCJpYXQiOjE1NzA3MjA1N=
TB9.l8S_KPyr8UTRgMH3lpfoS_f5z8qjT7A0ZsDjSUogzNQ~eyJ0eXAiOiJKV1QiLCJhbGciO=
iJIUzI1NiJ9.eyJkYXRhIjp7ImhvcnNlIjoib3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0L=
m9yZyIsImNhbWVsIjoiMjE4OWQ3YWEzIn0sImlhdCI6MTU3MDcyMDU1MH0.0f2wcfKXZOrNyX=
GryLYvl1xkxzh4YvvBS_DmAN87w9I]alexbill944@gmail.com [http://amsofttech.fs=
tracker.io/email/track/click?hash=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.=
eyJkYXRhIjp7Im11c3RoIjoibWFpbHRvOmFsZXhiaWxsOTQ0QGdtYWlsLmNvbSIsImxpb24iO=
iIyNzQ0OCIsImdvcmlsbGEiOiIyMTg3ZjNiYjkiLCJkZWVyIjoiMjE4OGFmMzQxIn0sImlhdC=
I6MTU3MDcyMDU1MH0.ClPKac2VCLvkUKwjNEiOlrRM42EeWB-6dR4j6g9hL9w~eyJ0eXAiOiJ=
KV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7ImhvcnNlIjoib3BlbndydC1kZXZlbEBsaXN=
0cy5vcGVud3J0Lm9yZyIsImNhbWVsIjoiMjE4OWQ3YWEzIn0sImlhdCI6MTU3MDcyMDU1MH0.=
0f2wcfKXZOrNyXGryLYvl1xkxzh4YvvBS_DmAN87w9I]


w:=C2=A0NamoBOT.com



 Unsubscribe [http://amsofttech.fstracker.io/email/track/unsubscribe?hash=
=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7Imxpb24iOiIyNzQ0OCIsI=
mdvcmlsbGEiOiIyMTg3ZjNiYjkiLCJob3JzZSI6Im9wZW53cnQtZGV2ZWxAbGlzdHMub3Blbn=
dydC5vcmciLCJjYW1lbCI6IjIxODlkN2FhMyJ9LCJpYXQiOjE1NzA3MjA1NTB9.hO30N7BI2z=
OvbQWvhZAULiBn0QIoyAUhh0RpCtO0zyc]

 =



----==_mimepart_5d9f4b26cfbaf_172abb230d01047182
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www=
.w3.org/TR/REC-html40/loose.dtd">
<html><body>
<div>Hello Openwrt,</div>
<div><br></div>
<div>We are a small business impressed by your open source initiative on =
https://github.com/openwrt. <br><br>Our management support different open=
-source projects under a limited budget on a regular basis. You have made=
 the final list.<br><br>We are looking forward to supporting you for the =
year ahead-either through monthly or quarterly donations. Depending on wh=
at you prefer.<br><br>Please let us know the payment mode that will work =
for you, so we may proceed. <br><br>We are hoping you will accept our hum=
ble gesture.=C2=A0</div> <br> <table border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" style=3D"font-style: normal; font-weight: 400; letter-spacin=
g: normal; text-align: start; text-indent: 0px; text-transform: none; whi=
te-space: normal; word-spacing: 0px; background-color: transparent; text-=
decoration-style: initial; text-decoration-color: initial; border-collaps=
e: collapse; line-height: 1.4; font-family: Verdana, Geneva, sans-serif; =
font-size: 11.7px; color: rgb(0, 0, 1);"><tbody>
<tr><td style=3D"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans=
-serif; margin: 0px; padding: 0px;"><font color=3D"#ff9a31"><span style=3D=
"font-size: 14.04px;">Alex Bill</span></font></td></tr>
<tr><td style=3D"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans=
-serif; margin: 0px; padding: 5px 0px;">Blogger=C2=A0|=C2=A0Internet Mark=
eting</td></tr>
<tr><td style=3D"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans=
-serif; margin: 0px; padding: 0px;">
<span style=3D"color: rgb(255, 154, 49);">e:=C2=A0</span><a href=3D"http:=
//amsofttech.fstracker.io/email/track/click?hash=3DeyJ0eXAiOiJKV1QiLCJhbG=
ciOiJIUzI1NiJ9.eyJkYXRhIjp7Im11c3RoIjoiaHR0cDovL2FwcHJveGVuLmZzdHJhY2tlci=
5pby9lbWFpbC90cmFjay9jbGljaz9oYXNoPWV5SjBlWEFpT2lKS1YxUWlMQ0poYkdjaU9pSkl=
VekkxTmlKOS5leUprWVhSaElqcDdJbTExYzNSb0lqb2liV0ZwYkhSdk9tRnNaWGhpYVd4c09U=
UTBRR2R0WVdsc0xtTnZiU0lzSW14cGIyNGlPaUl5TlRBelppSXNJbWR2Y21sc2JHRWlPaUl5T=
VRnM05XRTBPV1lpTENKa1pXVnlJam9pTWpFNE56Y3haVFpoSW4wc0ltbGhkQ0k2TVRVMk56WX=
dPVFE0TVgwLm0zYlZhelhCMUEyTUFtT0NaN2pxOFdCNjVHcHFYX3hrX1VIZjZLRzVNa01-ZXl=
KMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUo5LmV5SmtZWFJoSWpwN0ltaHZjbk5s=
SWpvaWRHOWphSFZyZDNWdWQyRjZiM0pBWjIxaGFXd3VZMjl0SWl3aVkyRnRaV3dpT2lJeU1UZ=
zNaV0V6WkRraWZTd2lhV0YwSWpveE5UWTNOakE1TkRneGZRLm11TEJQNmgzZnR6bzdDU21qMT=
hvT3hYbmJ2VGxlYWZGMTAtMFB2S3RkbVkiLCJsaW9uIjoiMjc0NDgiLCJnb3JpbGxhIjoiMjE=
4N2YzYmI5IiwiZGVlciI6IjIxODhhZjM0MCJ9LCJpYXQiOjE1NzA3MjA1NTB9.l8S_KPyr8UT=
RgMH3lpfoS_f5z8qjT7A0ZsDjSUogzNQ~eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ=
kYXRhIjp7ImhvcnNlIjoib3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZyIsImNhbWVs=
IjoiMjE4OWQ3YWEzIn0sImlhdCI6MTU3MDcyMDU1MH0.0f2wcfKXZOrNyXGryLYvl1xkxzh4Y=
vvBS_DmAN87w9I" rel=3D"noopener noreferrer noreferrer" style=3D"color: rg=
b(17, 85, 204);" target=3D"_blank" title=3D"http://approxen.fstracker.io/=
email/track/click?hash=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp=
7Im11c3RoIjoibWFpbHRvOmFsZXhiaWxsOTQ0QGdtYWlsLmNvbSIsImxpb24iOiIyNTAzZiIs=
ImdvcmlsbGEiOiIyMTg3NWE0OWYiLCJkZWVyIjoiMjE4NzcxZTZhIn0sImlhdCI6MTU2NzYwO=
TQ4MX0.m3bVazXB1A2MAmOCZ7jq8WB65GpqX_xk_UHf6KG5MkM~eyJ0eXAiOiJKV1QiLCJhbG=
ciOiJIUzI1NiJ9.eyJkYXRhIjp7ImhvcnNlIjoidG9jaHVrd3Vud2F6b3JAZ21haWwuY29tIi=
wiY2FtZWwiOiIyMTg3ZWEzZDkifSwiaWF0IjoxNTY3NjA5NDgxfQ.muLBP6h3ftzo7CSmj18o=
OxXnbvTleafF10-0PvKtdmY"></a><a href=3D"http://amsofttech.fstracker.io/em=
ail/track/click?hash=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7I=
m11c3RoIjoibWFpbHRvOmFsZXhiaWxsOTQ0QGdtYWlsLmNvbSIsImxpb24iOiIyNzQ0OCIsIm=
dvcmlsbGEiOiIyMTg3ZjNiYjkiLCJkZWVyIjoiMjE4OGFmMzQxIn0sImlhdCI6MTU3MDcyMDU=
1MH0.ClPKac2VCLvkUKwjNEiOlrRM42EeWB-6dR4j6g9hL9w~eyJ0eXAiOiJKV1QiLCJhbGci=
OiJIUzI1NiJ9.eyJkYXRhIjp7ImhvcnNlIjoib3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0=
Lm9yZyIsImNhbWVsIjoiMjE4OWQ3YWEzIn0sImlhdCI6MTU3MDcyMDU1MH0.0f2wcfKXZOrNy=
XGryLYvl1xkxzh4YvvBS_DmAN87w9I" rel=3D"noopener noreferrer" target=3D"_bl=
ank" title=3D"mailto:alexbill944@gmail.com">alexbill944@gmail.com</a>
</td></tr>
<tr><td style=3D"font-family: Roboto, RobotoDraft, Helvetica, Arial, sans=
-serif; margin: 0px; padding: 0px;">
<span style=3D"color: rgb(255, 154, 49);">w:=C2=A0</span><font color=3D"#=
000000">NamoBOT.com</font>
</td></tr>
</tbody></table>
<div><br></div>
<p><a clicktracking=3D"off" href=3D"http://amsofttech.fstracker.io/email/=
track/unsubscribe?hash=3DeyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp=
7Imxpb24iOiIyNzQ0OCIsImdvcmlsbGEiOiIyMTg3ZjNiYjkiLCJob3JzZSI6Im9wZW53cnQt=
ZGV2ZWxAbGlzdHMub3BlbndydC5vcmciLCJjYW1lbCI6IjIxODlkN2FhMyJ9LCJpYXQiOjE1N=
zA3MjA1NTB9.hO30N7BI2zOvbQWvhZAULiBn0QIoyAUhh0RpCtO0zyc" target=3D"_blank=
"> Unsubscribe</a></p>

<span title=3D"fs_association_identifier.2187b04e4.2187f3bb9.27448.1.1" s=
tyle=3D"font-size:0px; min-height:0px; height:0px; opacity:0; max-height:=
0px; line-height:0px; color:#ffffff"> </span>
<img src=3D"http://amsofttech.fstracker.io/email/track/open/eyJ0eXAiOiJKV=
1QiLCJhbGciOiJIUzI1NiJ9.eyJkYXRhIjp7Imxpb24iOiIyNzQ0OCIsImdvcmlsbGEiOiIyM=
Tg3ZjNiYjkiLCJob3JzZSI6Im9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmciLCJjYW=
1lbCI6IjIxODlkN2FhMyJ9LCJpYXQiOjE1NzA3MjA1NTB9.hO30N7BI2zOvbQWvhZAULiBn0Q=
IoyAUhh0RpCtO0zyc.gif" alt=3D"" width=3D"1" height=3D"1" border=3D"0" sty=
le=3D"height:1px !important;width:1px !important;border-width:0 !importan=
t;margin-top:0 !important;margin-bottom:0 !important;margin-right:0 !impo=
rtant;margin-left:0 !important;padding-top:0 !important;padding-bottom:0 =
!important;padding-right:0 !important;padding-left:0 !important;">
</body></html>

----==_mimepart_5d9f4b26cfbaf_172abb230d01047182--


--===============5970589914398510707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5970589914398510707==--

