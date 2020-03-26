Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A879193DA6
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 12:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0Ylal8p/j/DHGuKYUkqbzp7RHuBm3dFzN+CbcdUiG1k=; b=Cr629dbOSEjM8ljRoj+DiAE8o
	eTcNUzX4Ghk0AxnZ9pmaOTi3v39zqCX4j5zskihrfHKiEKpYQX3yKtiAdQITpK1JODcY+ZvoNLD6+
	VdatRCPYhJ11IYhH06RhRPXTYs6g/1OjPqCS+TIP3b0XgES5XnMkOYd0UjsUqp8ogrBkSX+HM4Qkg
	3yI91iv3uYrZFzdQsgccdrvlY9pOGEX48aIQSh3v9/SBBQjl8k6GYSYVUZw7vApBISwjcSllIEb1a
	bUDJhcdGNAqBqFTTD1en2C2wy+qYn6VdqOYlgMb93MzdkTiSgPQQSXkvrgJO9SntGcVGgUioYMA82
	JX+WLH++w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHQO3-0000KA-Oa; Thu, 26 Mar 2020 11:09:23 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHQNv-0000JW-EE
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 11:09:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585220939;
 bh=P78at0AjdBGcaHVZEs55oaYdx60Wmfr87pYXlhQJLVg=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
 b=XgYA7X+iGmiw6rpWgoQ1QXxIem8crYEx28CVT723eD5GDWZBy1s892i48q1e/YneG
 EinkTbyl03olxWKMcyn+PK0PxUGBL6ec7miC64a+0cWGSmal/MzQCaFmGIyouijKkd
 c20EHghp3ZJDL3tf7D/m3hA8ZWui2h6jE496qQfc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost ([96.58.36.95]) by mail.gmx.com (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MnJlc-1jgcGN1Nki-00jGqL; Thu, 26
 Mar 2020 12:08:59 +0100
Date: Thu, 26 Mar 2020 11:08:52 +0000
In-Reply-To: <46f1a780-31b0-57bd-8a59-698a5dbd03c7@aparcar.org>
References: <CAPS4iO+trOBtk-wRV5SxoZYkGSNuwR0jUPiUjmnHUC-VhPS4tQ@mail.gmail.com>
 <0e1eddc8-e991-720c-92f8-c3acb825596a@hauke-m.de>
 <76956cda-c3bd-4ceb-a729-1d7a634da8ce@localhost>
 <46f1a780-31b0-57bd-8a59-698a5dbd03c7@aparcar.org>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org, Paul Spooren <mail@aparcar.org>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
From: Lucas Ramage <oxr463@gmx.us>
Message-ID: <8A38529A-346E-4E0D-9177-C6CDD3672E6B@gmx.us>
X-Provags-ID: V03:K1:MPVGGSRkpdc7/NILKD6wnocm34Q0IT874q3CmFtMMbYnHzdxdAf
 IJo8vBhueK9cEY6T2lxCBWCapL0dyDGUTnmp64BnhwMtx5PYu9zvE1Y7G73x9gYxPKwugiT
 jv4EJYskfJUi20NLb46iZDRfE4bScLQ6oTX6q4qJL/Citez7/6XrrNh2zD/n5g51DLxRvZc
 dBFjE59mFCOnxLQ1P93pQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Rxe2MflOEpk=:UxdNl0In1PMghJN/ay/QeL
 PH4NAO/kGhnHxYAh300TFaywml9u7ekKcyuKJDfmHe0Q92WNy8T8Cxx8URKWi6AomvJiII04W
 Co2miH1XAGL0+8zOf+wFbV18OpuxXxkUHhLJ5henhyuwypPclU8YhDcANcepRh9hHej8ycnGI
 Hu4gijYFhrZn9FsSynarZOIy0up/iSaWH+HcfydWhrhVr1Fv6q5d1m9ci0WLCrnxqHppHiFrL
 xNJuN80GRTIqw/CVy/MJwxFSCknnlr+z0zG0crQ+TUhcYRNjH2Kd+QL7UTH9nKKy1+HGMRYpt
 7qU6UfXhkQvK3TLMT8h6bsESuCzesobS4kNr4PExUdUfOMnCkHsg5SGQqMeCPYdBECo07eujz
 NvVk37w4/3ca9Gz7cNiD4tA7PH/HS2OT6A3YofoZYkgb5vGTFEIPvCIaFZvDqvhdgJQ+umhs4
 YCY6Q4cWbVDIbxDLevv/LsHUl6dkwjPqXpMsfB78cjfJ9nq8qWVKh2sEaDKnKTfzMhBr/TjfI
 N+Wryt2gPrqkbrHTzEUEKh86G6cTGRzgwsUaOLPEOr/SXF9KRigYF91Ej7wMfcqZLAD/DY3RT
 cpO4f6fBxJ8UsCpm7arT8z8DhbhpyAgkrWgp/muFdcqJXWdCBrYov4nHcsh7WVFvHI2er7aXH
 DWpUZ5Sb+KzOzNTZm4gWIkWHls8EYYSsX5HUWOHoTrN5cq25LplIUalDfwlHtZeSGGbQf0gS5
 L8RgJTe98iSLYF0k0B3Ba1HcQ6sFElZlOpSJd7jesOeHP1WEWveEGLylNEC7sXVQofYIE6yVX
 xygwhf2CcsQigUGNutPdXjfShRqIp1Lr6l6eFwBbfReZxRnHZz7GjmU/flnRhPgn70rSpEkYk
 3iUtn3u6lUmpHZFTvEkzztFz1VsCbP1qFQOtPhSKBXsZ7W8CqcJVWQVzpzshBqaRt8SgkO+ci
 Hk6ZKIg6Ln3aXQQN+ZB1ISdg+ZhV4n6GRe6mAmRkutoQA/GX6CKTsCEhXraxtXCLcKSSgITT5
 APLhrcGD804E/N3hvvK3JeghnhuAKeutm+FTzWXDv/eqgGk//GVBpLs0U/5ukzHN2g7PXUoEb
 RnwP++R/GQ0rJexBHu7wyoG29aiIDLLQSTrVXXgkzxyofY9W3CfEHaamge254ZjAq+YzLjz5v
 UHJqCG1Bpyxvx8rkM1KJZ9E8pIh53mt3FCFoIo9mSG6kHdIBR5/KZrbIA0j0F65adkhYSg/zu
 em0IXSRkb4dAmIAIc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_040915_816676_E6286BCA 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oxr463[at]gmx.us]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [oxr463[at]gmx.us]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] OpenWrt developer meeting at Battlemesh and
 COVID-19
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
Cc: openwrt-devel@openwrt.org
Content-Type: multipart/mixed; boundary="===============5201675255688811385=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5201675255688811385==
Content-Type: multipart/alternative; boundary="----76PKMGBX4HGGPJMOU1XT6S3G85MVMM"
Content-Transfer-Encoding: 7bit

------76PKMGBX4HGGPJMOU1XT6S3G85MVMM
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,

I would love an invite as an outside contributor=2E

Regards,

On March 26, 2020 8:38:28 AM UTC, Paul Spooren <mail@aparcar=2Eorg> wrote:
>Hi team,
>
>I hope everyone is fine & healthy and can use the time in quarantine to
>
>finally review those important patches I sent!
>
>>> Based on recent events regarding COVID-19 the Battlemesh and the
>OpenWrt
>>> developer meeting will not take place in May this year=2E
>> it's really nice and necessary to meet in person, but I would like to
>(ab)use the current situation and find out, if it would be possible to
>hold remote meetings as well=2E That way we could meet in person every
>~12 months, possibly having remote meetings in between, thus achieving
>the 6 months cadence we've talked about on the last IRL meeting=2E
>>
>> One or two weekend days would probably work for most of us (based on
>the recent votes)=2E
>>
>> I don't have any prior experience with such meetings, but I assume
>it's going to be quite common format in the upcoming days, so we might
>look around and steal the best parts from the other FOSS projects=2E
>
>My current classes are taught via meet=2Egoogle=2Ecom and zoom=2Eus, both=
=20
>cases works fine with about 20 members per session=2E For other
>"meetings"=20
>I used meet=2Ejit=2Esi which works fine too, however not tried at a bigge=
r=20
>scale=2E
>
>Do you plan to invite non-core-developers (like me) again or only the=20
>core clique? If I remember the meeting in Hamburg correct we also
>wanted=20
>to invite package maintainers to have a bigger crowed discussing about=20
>OpenWrts future=2E
>
>Best,
>Paul
>
>
>_______________________________________________
>openwrt-devel mailing list
>openwrt-devel@lists=2Eopenwrt=2Eorg
>https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------76PKMGBX4HGGPJMOU1XT6S3G85MVMM
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hello,<br><br>I would love an invite as an outside=
 contributor=2E<br><br>Regards,<br><br><div class=3D"gmail_quote">On March =
26, 2020 8:38:28 AM UTC, Paul Spooren &lt;mail@aparcar=2Eorg&gt; wrote:<blo=
ckquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-=
left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi team,<br><br>I hope everyone is fine &amp; health=
y and can use the time in quarantine to <br>finally review those important =
patches I sent!<br><br><blockquote class=3D"gmail_quote" style=3D"margin: 0=
pt 0pt 1ex 0=2E8ex; border-left: 1px solid #729fcf; padding-left: 1ex;"><bl=
ockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 1ex 0=2E8ex; border=
-left: 1px solid #ad7fa8; padding-left: 1ex;">Based on recent events regard=
ing COVID-19 the Battlemesh and the OpenWrt<br>developer meeting will not t=
ake place in May this year=2E<br></blockquote> it's really nice and necessa=
ry to meet in person, but I would like to (ab)use the current situation and=
 find out, if it would be possible to hold remote meetings as well=2E That =
way we could meet in person every ~12 months, possibly having remote meetin=
gs in between, thus achieving the 6 months cadence we've talked about on th=
e last IRL meeting=2E<br><br> One or two weekend days would probably work f=
or most of us (based on the recent votes)=2E<br><br> I don't have any prior=
 experience with such meetings, but I assume it's going to be quite common =
format in the upcoming days, so we might look around and steal the best par=
ts from the other FOSS projects=2E<br></blockquote><br>My current classes a=
re taught via meet=2Egoogle=2Ecom and zoom=2Eus, both <br>cases works fine =
with about 20 members per session=2E For other "meetings" <br>I used meet=
=2Ejit=2Esi which works fine too, however not tried at a bigger <br>scale=
=2E<br><br>Do you plan to invite non-core-developers (like me) again or onl=
y the <br>core clique? If I remember the meeting in Hamburg correct we also=
 wanted <br>to invite package maintainers to have a bigger crowed discussin=
g about <br>OpenWrts future=2E<br><br>Best,<br>Paul<hr>openwrt-devel mailin=
g list<br>openwrt-devel@lists=2Eopenwrt=2Eorg<br><a href=3D"https://lists=
=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel">https://lists=2Eopenwrt=2E=
org/mailman/listinfo/openwrt-devel</a><br></pre></blockquote></div><br>-- <=
br>Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E=
</body></html>
------76PKMGBX4HGGPJMOU1XT6S3G85MVMM--


--===============5201675255688811385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5201675255688811385==--

