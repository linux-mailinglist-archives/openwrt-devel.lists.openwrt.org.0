Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB4C1D1C93
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 19:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OpUV7O9RINriHmvdp884OxKrrBYXnx0Vr6IAXIKAMqw=; b=tdn
	16sA+7K2Wru8kLiFyRRHlSKkJeuocyqpHZqIpTdobpU3ArQBUSwsfC72vpJgDgZkg/w+cLFaAEnEQ
	qabQMMZKsR3LeHrIYVKN/+ReZB89m172Tj3ZGKce4egUhTe/3tnqPRF2mh1t0PHVcR+RcSehRcbam
	KsEKhxU/DI5ibU4rkK0lzIFcY175iYWxFiItXFkE4+wqdYGfvI8CanzS5rqLps+v4fZXu/CpMs2fu
	on3EIiPKRNLVbo4NhwG3IuwhX7vEydp5Ze5R9Mug+b7umBD1DZePL+TXFArm0Bh2WRW17Jh4AYXRZ
	5FAtpbsu21oz0fcjpjTiYs3h6iUtAwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvVI-00025H-HT; Wed, 13 May 2020 17:49:12 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvVA-00024s-0l
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 17:49:05 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a21so502037ljj.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 10:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=RdKTJTP7C0elnYySnVmq38iZqSkG3ZClt1x4axKnCAw=;
 b=cvoOQWnDCTM2iZnPyjJA20xq0NGYrNUzMKMl7Taw3F35Lk1Pghu6+Y8+M8QZI2cc63
 HFBfYalPbeq7hemyrT7GK7zbUyxWIqMsiUkjjKSxhLDSev1bFw3GSouO/BXJi+oZj/dJ
 TFeZ2sw8czYsmJ5UhqCZXLNycvSsc1dC7kUUtNdznmq8U5K5Afam9bjZuCOgcOrU2myS
 vQa8sA+t2U/6XbhKQVMSdgs4geryIUtBJlNIQqiTLxLWR75gih3VYq/GaMOevuRZGavQ
 m/k1t2TItxbr/4qIpqvhackBrPxmza3Sw02pMqjcUYU4qpt/NfFyHog4S9Cq5MbdMBhX
 JPPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=RdKTJTP7C0elnYySnVmq38iZqSkG3ZClt1x4axKnCAw=;
 b=gO2aikvKB0CV83QOA++uEqIZS/P5AxZcRHdL7nAEcx3PePNr689phD5CFUIEp0yaZa
 b9qshUuqDLeJsRMCNxSd+DQHkpWpME4LNZsJkkyHtW/1tiLmEkfnbk766tgGnXk6whAg
 QNJNugtOuie8W4k3AysZ33w3x+s7r1vB2tVpRAgtHfPnfeDZ6ifZR1k3cM3GHKhKuoSk
 ldEidW21Zb7ZfYNrstjrEi8Ued8dZ24TUyGxp0lt/5AYYwp5ewVOaJCg7JmmQhPICsTW
 HzENHXgKlqZMhMj3u1OhVTqMAinax+T6QXdtF7An7W4k8cadnnjza6scKRD6htCiTKYW
 +KKw==
X-Gm-Message-State: AOAM531rupqiSx2cb6thNWlam7r0cvs5+dF9qGDa2ifv89XVRZGunRz2
 x5MXvCJmIr5kyuO/IKrm3UttvZI9/Lw7AY+rKNO6viBL
X-Google-Smtp-Source: ABdhPJypgTlxu0CTPyp1qHzDpvUWMD8vEQLZ40MyuH+2LB564PPtLHEa1vbdHiAY9wXe7obVla2nw6NuwP1SWaRLhBc=
X-Received: by 2002:a2e:50b:: with SMTP id 11mr145288ljf.233.1589392140409;
 Wed, 13 May 2020 10:49:00 -0700 (PDT)
MIME-Version: 1.0
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 13 May 2020 12:48:49 -0500
Message-ID: <CAJQUmm5Y2AA3Lo6mqdvbQSJc3kNTsGYwEwD4hQSyoVgkqpscww@mail.gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_104904_060888_70B26DC6 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] Ubus based service watchdog?
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
Content-Type: multipart/mixed; boundary="===============1455954784795968518=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1455954784795968518==
Content-Type: multipart/alternative; boundary="000000000000f0374905a58b3133"

--000000000000f0374905a58b3133
Content-Type: text/plain; charset="UTF-8"

I have a critical service on my OpenWRT system that needs monitoring and
re-starting if it's failed.

I've been looking for a mechanism in procd that would allow me to request
that my service be terminated if it did not periodically notify some
watchdog endpoint via ubus.

It seems to me like this is not something that is currently supported by
procd, and I've written my own clumsy "watchdog" wrapper program that tries
to do the job.

Are there any plans to support a feature like this in procd directly in the
future?

If there are no plans, and I were to write code for this, would OpenWRT be
interested in reviewing, and then merging, patches?

Are there other people on this list who would take advantage of this
feature if it were available? If so, what functionality would you like to
see?

--000000000000f0374905a58b3133
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have a critical service on my OpenWRT system that needs =
monitoring and re-starting if it&#39;s failed.<div><br></div><div>I&#39;ve =
been looking for a mechanism in procd that would allow me to request that m=
y service be terminated if it did not periodically notify some watchdog end=
point=C2=A0via ubus.</div><div><br></div><div>It seems to me like this is n=
ot something that is currently supported by procd, and I&#39;ve written my =
own clumsy &quot;watchdog&quot; wrapper program that tries to do the job.</=
div><div><br></div><div>Are there any plans to support a feature like this =
in procd directly in the future?</div><div><br></div><div>If there are no p=
lans, and I were to write code for this, would OpenWRT be interested in rev=
iewing, and then merging, patches?</div><div><br></div><div>Are there other=
 people on this list who would take advantage of this feature if it were av=
ailable? If so, what functionality would you like to see?</div><div><br></d=
iv><div><br></div></div>

--000000000000f0374905a58b3133--


--===============1455954784795968518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1455954784795968518==--

