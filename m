Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E5A1691E8
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Feb 2020 22:36:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=J0KikRruH5QzniYb/vv45R916Koqo+S6SlcUwbfuZ6E=; b=eYc
	pX87l+i2lQA9Gz/zR9T1Zx23bSy95ce2xlhqOQYSEJcF4zaf20yueQc1/P2spZdmlmZ//xojFKtd1
	jT3VhLX9WhDrLfkiksFkC9R8Qr6ehP+aJElLkrlA5sHIKNE6wCB1SSFHwjEEAHTQ9zmDvdW+JYKtB
	IfvSNpcp7Qoh3PH1/AUaTtPLyF9mKI5s5AkpQBjj/DpnfHheZ/axAo3Ry8x0uXqgr5ZT8Uftlmho/
	XDwR1gXi8POdKQDlYMLL5DZYyI0BrHH7ScV+Bo8yLgv181PgbgvjY1k5VdlfNhMpwtoplFgFRMfMa
	9EC0O8H6buxjkFM7A4mwMAGUp6fu1VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5cRG-0004Lb-Qg; Sat, 22 Feb 2020 21:35:54 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5cR9-0004L8-4L
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 21:35:48 +0000
Received: by mail-il1-x136.google.com with SMTP id b15so4629296iln.3
 for <openwrt-devel@lists.openwrt.org>; Sat, 22 Feb 2020 13:35:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ayerscasa-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=4GOlvEzXgOv/z8rqZYooNqpid7Ff2dgVbzwKS4AzSP0=;
 b=Lo9PQ68V1rsIPDnyRUdKVne49j7kie8J6e3wkoZirVnnvekhqj3hg6sr4yb2E8544Y
 cOgV69u/CU3TWgKrPCq0t5FZxEeXHlX6Y07DH+7UiJr5Jd1seFGio6JY6M20F0Eex6xG
 h4z3Ks4vXVhrM5d4CEV58r6tj7utjF4qV5LFBYydW4xE4jwZwlHDt1mjn9twbIqgAMEN
 L9cVQ7XFJvPpDwIdH63K2KGWkwyMTEWAFIPNCP9G8VmHHnH3xXTE0cZjyqc772z20J8K
 hdeHTThmjCPZgR5qTUXDTu+VHeS9nS8KBlufTP4cEU/k/mJ7HbeAcKFcVEh5wZuraMqU
 tZjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=4GOlvEzXgOv/z8rqZYooNqpid7Ff2dgVbzwKS4AzSP0=;
 b=uoOT7+b4Y8H6XSeGjcKbQxOk4KkVPmQCzsgJ/EewW800bJ7CCDGusXXem+Aj8eLnoC
 hJ5FwjicH5ToNA80tfyoaqmUTLQvQIoOnuRdAEmKag7ZKtQ/lebIAV11Dn4e6EGyudeH
 d0KbazAq8xF+34AQdALXvWbb6DbNGoIHJlpIR9umgjTpMfikT9RxwIBPSmqUZNpDf87k
 VuuBF36PETG6OQWlhZODgqOCALjp1UqM+1OLxrqXfe1eXAfbj4BVPXNeJZIwsMFCmq5M
 P263rNF+9suQJw89gdSTFehtl08nszX8Df8zzQr5fFRjjrdC9S0BPEF1XDlHol8Tl80r
 kOKw==
X-Gm-Message-State: APjAAAWVVCjiPmngACVQU7aPdqT7NGE/H0shQiBN+thjeaZGmIAS8e8i
 WSfgktYUknNlvJUsNJijmqoxMeWI4yOOr+6Jpnz1vIHlc5w=
X-Google-Smtp-Source: APXvYqzOvgjms5jWRxJ0RNWrTrTH7nge4XpmKG5G/LdesAJvjz6zHT0gks5DqK0kG7VQ9OwcmMbT83ERHujbwuW6ZL4=
X-Received: by 2002:a92:85d2:: with SMTP id f201mr48516239ilh.45.1582407345613; 
 Sat, 22 Feb 2020 13:35:45 -0800 (PST)
MIME-Version: 1.0
From: Joe Ayers <joe@ayerscasa.com>
Date: Sat, 22 Feb 2020 13:35:36 -0800
Message-ID: <CAALvt2PXRSyLhCwYo3_m8yd8xxAdeNnZNa6wZ7jyu4bp4Nb86Q@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org, gch921213@gmail.com, ynezz@true.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_133547_312150_7FF9C12E 
X-CRM114-Status: UNSURE (   2.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] tplink and gl devices accidentally removed from
 02_network?
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
Content-Type: multipart/mixed; boundary="===============3221119503052766845=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3221119503052766845==
Content-Type: multipart/alternative; boundary="000000000000b9c5cc059f30eb7a"

--000000000000b9c5cc059f30eb7a
Content-Type: text/plain; charset="UTF-8"

In 19.07.1 and master, I don't find definitions for a few devices in
02_network.

I'm debugging an issue and did not find a definition for gl-ar150.  It
appears a few devices were accidentally removed:

- comfast,cf-e5|\
- glinet,gl-ar150|\
- glinet,gl-ar300m-nand|\
- glinet,gl-ar300m-nor|\
- glinet,gl-x750|\
- tplink,tl-wr810n-v1|\
- tplink,tl-wr810n-v2|\
- yuncore,a770)

https://github.com/openwrt/openwrt/commit/c3a85189181827c8d5c2ab736428be30e4c13128


bug?  or more to the story?

Joe AE6XE

--000000000000b9c5cc059f30eb7a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In 19.07.1 and master, I don&#39;t find definitions for a =
few devices in 02_network.=C2=A0=C2=A0<div><br></div><div><div>I&#39;m debu=
gging an issue and did not find a definition for gl-ar150.=C2=A0 It appears=
 a few devices were accidentally removed:<br></div><div><br></div><div>-	co=
mfast,cf-e5|\<br>-	glinet,gl-ar150|\<br>-	glinet,gl-ar300m-nand|\<br>-	glin=
et,gl-ar300m-nor|\<br>-	glinet,gl-x750|\<br>-	tplink,tl-wr810n-v1|\<br>-	tp=
link,tl-wr810n-v2|\<br>-	yuncore,a770)<br></div><div><br></div><div><a href=
=3D"https://github.com/openwrt/openwrt/commit/c3a85189181827c8d5c2ab736428b=
e30e4c13128">https://github.com/openwrt/openwrt/commit/c3a85189181827c8d5c2=
ab736428be30e4c13128</a>=C2=A0<br></div><div><br></div><div>bug?=C2=A0 or m=
ore to the story?<br></div><div><br></div><div>Joe AE6XE</div></div></div>

--000000000000b9c5cc059f30eb7a--


--===============3221119503052766845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3221119503052766845==--

