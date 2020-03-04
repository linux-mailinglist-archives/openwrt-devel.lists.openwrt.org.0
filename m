Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543171794B8
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Mar 2020 17:15:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mWu1DlPvHhdlRmxVAm80N5t3dj9doFnEaa7jlylm6z4=; b=Wu2
	EzyrRUkij6EgSyxWKZf518NoJazvnCOilOF7WMdfCsPINz2+F/ooSmPbWZPybBlPQxGnFyUOzZCu5
	un7RXOYnA4RugMj+5aZPu1abZctKlB1rK1FJWZm9WLobkUBiPJ/j7G+WbrxQdqK8kAh3gpsbDOd8S
	NqOSp190rjXlAbrIxc1JvYlcs8nUxrION8pej0Pff/X2iKVoTz6/chhnCQaFJQIk2mFzvzesyor6U
	Tb6nMIjs5bD41Y4ThlEqoSVIG6ktc0/lRZXO8iBGKYYDiYgE9ds7B4+FOa7xPLPenbnX9hng4/2Tl
	amEmig3eBfc5/36d+e082qt4g6pjfxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9WgQ-00044s-W2; Wed, 04 Mar 2020 16:15:42 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9WgJ-00044B-AE
 for openwrt-devel@lists.openwrt.org; Wed, 04 Mar 2020 16:15:37 +0000
Received: by mail-il1-x12e.google.com with SMTP id q13so2273374ile.8
 for <openwrt-devel@lists.openwrt.org>; Wed, 04 Mar 2020 08:15:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zenotec-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=qAI6ZePyXoie53zcgjMtcyZXk5Eka9LbKr9VEmJped0=;
 b=KU6XD22GpFpHO26kC9+MEv6JP6DlEKuw6KcxEIoMqV30ItyCWXX8jXY/UqGBERsPD5
 tL15+7ajaKcd2lvwMFIKBYa5d42ejz2llQ1RieaTNw94lssLrf9faSRY7BPpucJFR+ES
 J45BDHc8gtakH7Yf6ZhwRoVfJz1vGH073jruOoIgB/ALQx4JtUVq5TqdFgwXrrx26FPM
 ZCG7KEFXs7FVClbeuz3eOTomFGsWulP5rI5aDPqY+FhwdaHHnJn8n20PyAfwjCu6/Yep
 2qOI8Noopr+/5vO4JbCrsGv9xPi1xMUIB6yxewcMVF4qsEatEbKNZtWs8gpXgXCi5qOA
 p19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=qAI6ZePyXoie53zcgjMtcyZXk5Eka9LbKr9VEmJped0=;
 b=Rcwhnv+ldBfSJG7ntvOYMuDh4M1rAsHsqzs5yNxFXJHl+pz7P7SLKqefFXyzp9TBga
 m0BSbAzkYkYSkkjkv+dg2JxPNsXwqIpp5CpIkQgh5XIqJEucCsDz8xdB8H9kNZsOWZJh
 yNntSsUuZI91uRVFGbabAxTzqvDc58pI6fO1BBeEe0tlLaux3Ru3WMmW4DaUn87ouA3L
 KyVsFEyRNaWdgqeltrNIJv1k6eLidM4LYwpgTYGjYqLLwfrW/5ttO4tLtbRMHrjCMvjq
 J0RIOTbHS2srIqsi4k19KQ1jY5Y+tGd19OeD0EfWJ9TjaSrqdthQTvLxn0EcFSKXPfTP
 /YHQ==
X-Gm-Message-State: ANhLgQ22Aua4vKphRbUIcMHP7XxXSbrgpHmMj7H856EvuzvPDuuCKptT
 YolAfDc+VpKu18LCMfRTUu95MjG2Weq71bVh5VddMQUjVCU=
X-Google-Smtp-Source: ADFU+vuTjKyb/PBccnnWQZh0suTtaulWpBTBz5D9cqU21nKDbCot8+LsJPqB1aEEgR7AEonggd3YtZgcdpZunKamxyE=
X-Received: by 2002:a92:89ce:: with SMTP id w75mr3377037ilk.143.1583338533369; 
 Wed, 04 Mar 2020 08:15:33 -0800 (PST)
MIME-Version: 1.0
From: Kevin Mahoney <kevin.mahoney@zenotec.net>
Date: Wed, 4 Mar 2020 09:15:22 -0700
Message-ID: <CAEKKVUgvLQUUdgFaPNTraRRsOZHns9bqCHsdbG7SLMJ2KXhsrA@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_081535_497066_CA096DCB 
X-CRM114-Status: UNSURE (   4.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:12e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] hostapd menuconfig selection
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
Content-Type: multipart/mixed; boundary="===============3027693715002280516=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3027693715002280516==
Content-Type: multipart/alternative; boundary="000000000000d750c705a009bafb"

--000000000000d750c705a009bafb
Content-Type: text/plain; charset="UTF-8"

I'm trying to enable building hostapd-full-openssl however, I'm a little
confused by the menu options for hostapd. I've checked and this seems to be
the same in 18.06, 19.07 and master. The option to build hostapd-openssl is
under hostapd-mini and the option to build hostapd-basic is under hostapd.
If I select hostapd and then hostapd-openssl, if forces me to build
hostapd-openssl as a module saying that one of its dependencies is being
built as a module. I've studied the makefile
'package/network/services/hostapd/Makefile' and the logic seems correct, so
I'm a little baffled where menuconfig is picking this up. It appears if I
just select hostapd-openssl, it does what I want, however there seems to be
some logic bug in how the menu options are ordered.

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

--000000000000d750c705a009bafb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to enable building hostapd-full-openss=
l however, I&#39;m a little confused by the menu options for hostapd. I&#39=
;ve checked and this seems to be the same in 18.06, 19.07 and master. The o=
ption to build hostapd-openssl is under hostapd-mini and the option to buil=
d hostapd-basic is under hostapd. If I select hostapd and then hostapd-open=
ssl, if forces me to build hostapd-openssl as a module saying that one of i=
ts dependencies is being built as a module. I&#39;ve studied the makefile &=
#39;package/network/services/hostapd/Makefile&#39; and the logic seems corr=
ect, so I&#39;m a little baffled where menuconfig is picking this up. It ap=
pears if I just select hostapd-openssl, it does what I want, however there =
seems to be some logic bug in how the menu options are ordered.</div><div><=
br></div><div>Regards,</div><div><br></div><br clear=3D"all"><div><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><div><font face=3D"=
courier new, monospace" size=3D"2"><b>Kevin Mahoney</b></font></div><div><f=
ont face=3D"courier new, monospace" size=3D"2"><b><br></b></font></div><div=
><font face=3D"courier new, monospace" size=3D"1"><b>ZenoTec LLC</b></font>=
</div><div><font face=3D"courier new, monospace" size=3D"1">720-864-4320</f=
ont></div><div><font face=3D"courier new, monospace" size=3D"1"><a href=3D"=
mailto:kevin.mahoney@zenotec.net" target=3D"_blank">kevin.mahoney@zenotec.n=
et</a></font></div><div><font face=3D"courier new, monospace" size=3D"1"><a=
 href=3D"http://www.zenotec.net" target=3D"_blank">www.zenotec.net</a></fon=
t></div><div><br></div><div>This e-mail and any attachments are intended so=
lely for the use of the intended recipient(s) and may contain legally privi=
leged, proprietary and/or confidential information. Any use, disclosure, di=
ssemination, distribution or copying of this e-mail and any attachments for=
 any purposes that have not been specifically authorized by the sender is s=
trictly prohibited. If you are not the intended recipient, please immediate=
ly notify the sender by reply e-mail and permanently delete all copies and =
attachments.<br></div></div></div></div></div></div></div></div></div>

--000000000000d750c705a009bafb--


--===============3027693715002280516==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3027693715002280516==--

