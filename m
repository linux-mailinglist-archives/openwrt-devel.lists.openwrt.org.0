Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCA4848AD
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 11:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:Date:Mime-Version:To:From:References:In-Reply-To:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wiZQL6KATrtb0znM61pP2xyfw0sVHTFHWU0keRRn75c=; b=Hh27HuLdv3Hn2gxvW5zJ/3PEC
	B5Y3MFyNfZutHckuFV70nH3tflvfvIOUe6uyWbzsPwt8kbVSxAAfAs9wvW5HylLUQ2dMDWyaAqe9s
	P6XFbPBXhs2VsU0kDPhC3CkLldmAd1CUwv0pFNfwn30rng6ZLp+iwQ3dQvZpymJgdh62hCuv2gALD
	LlYm1MBwWsAOcHN/x/BpcvoG0bkzi8fdKTy+b3AZmiu9sdPkEwDSbdGD119G+/z4fn8uL5I4HMRYi
	m2GeNuitUgPioT/VjUb3BPgUaCzBu9r0uwNMI2pjZTpUULvHAZY6PYtHCxKR/Sk58tR2igeBkAxB0
	RBU8kjirg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIKA-0004UT-Ch; Wed, 07 Aug 2019 09:33:38 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIJp-0004UB-Kw
 for openwrt-devel@bombadil.infradead.org; Wed, 07 Aug 2019 09:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Message-ID:Date:
 Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Cc:To:From:
 References:In-Reply-To:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=IpK77j1NIBOOl1xouXpHsy/QGFQe+fHueIZj8hNkT64=; b=gUOFW6UQAp2q
 LZCRWBT3n2vdPnrncezCXnqpc2JA87sQIONkgbsnnDefDM8Xfv5fND1RVduyxXrbNLimybfVvycTL
 OGlVYB5RnGJ3dP944tLdYuw1WKF8xPCXA6FbpYmYYubeX1aAxuIUv9I0EhHQoVxVc1WLQlfo4IKZC
 bUPVlnDu/6gGsSc+AZaoikV2klAL7wKbGR29rL340qcFDAocO0D2SXZlml74T0eyR5eVqSDyU5t6E
 qkUDswuMLruWLO6yfzj/Fht8QcuHLJz4Q9MJaPgH40Tml46V8AOSktYdrdW0kppO2D8QUsW9vqY4b
 6eeh3ZaKf6ugtrb0VKjDIg==;
Received: from smtpbgbr2.qq.com ([54.207.22.56])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIJu-0006QT-9J
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 09:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
 t=1565170351; bh=IpK77j1NIBOOl1xouXpHsy/QGFQe+fHueIZj8hNkT64=;
 h=From:To:Subject:Mime-Version:Date:Message-ID;
 b=NohC3bwiEcLGcyh7oWqPuh5Vn9Ufq70zamgDHtI6TNwjNcCAE/8HsRhVclqpD36br
 tHoOXzQw7njaYAcpeL2/ROamNUgJ0CW5bDWktDG/9MgzXj/tLUuLtSjl/nvxNWTb66
 oWMDt052A+q33fzUe4TraRKdKNq8sm3T0feZaQOQ=
X-QQ-FEAT: STGqCb8UuM+Y4H4koUIKsgemKooNvc2GPMzQqvm0YfIKsxVCrXv7xKufR6/+/
 1UgUqYAXDQK4kxi7zR17KbiPDLT1Ks97GPz4c9166ZwRpqBi3al/LfcfHV+7q4/JCDe5G1Y
 A2dUcVRrcdKIwzQHDNsBOO6id7X+yK1qmK3z5PX9WGltvQdzv9e0k7u9SxKzJa6VLoGjfE5
 c6N1t5jNhpVGrb0mzfmCI6ytaOpOjA3rptgKi0kRrpt7w3RWd9E8EikO5eflsrL9HiBE8JG
 OwHJ2lx5FMlk3+90eOkJw8l5lrIdl/b802kA==
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 115.205.16.30
In-Reply-To: <tencent_CC467618EF234A1AD97E72589FEEAC58F909@qq.com>
References: <1564114882-63441-1-git-send-email-wurobinson@qq.com>	<00a901d5461b$c893d310$59bb7930$@adrianschmutzler.de>
 <tencent_599CEF7667E63EBDE4896D3CC7EBA9D68A05@qq.com>
 <00ac01d546cc$1359c2a0$3a0d47e0$@adrianschmutzler.de>
 <tencent_CC467618EF234A1AD97E72589FEEAC58F909@qq.com>
X-QQ-STYLE: 
X-QQ-mid: webmail438t1565170350t1089647
From: "=?gb18030?B?Um9iaW5zb24gV3U=?=" <wurobinson@qq.com>
To: "=?gb18030?B?QWRyaWFuIFNjaG11dHpsZXI=?=" <mail@adrianschmutzler.de>
Mime-Version: 1.0
Date: Wed, 7 Aug 2019 17:32:30 +0800
X-Priority: 3
Message-ID: <tencent_75E229CDEA804F6D87F6FEAEA4924D232705@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-ReplyHash: 3091912798
X-QQ-SENDSIZE: 520
Received: from qq.com (unknown [127.0.0.1]) by smtp.qq.com (ESMTP) with SMTP
 id ; Wed, 07 Aug 2019 17:32:31 +0800 (CST)
Feedback-ID: webmail:qq.com:bgforeign:bgforeign4
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_103326_566723_FFE8ABDA 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.207.22.56 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wurobinson[at]qq.com)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
Subject: [OpenWrt-Devel] =?gb18030?b?UkWjulJFo7pSRTogUkWjulJFOiAgW1BBVENI?=
 =?gb18030?q?=5D_ramips=3A_add_support_to_JS7628_development_board?=
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
Cc: =?gb18030?B?b3BlbndydC1kZXZlbA==?= <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2442607083558866265=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format.

--===============2442607083558866265==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_5D4A9AAE_0D084ED0_521D4B72"
Content-Transfer-Encoding: 8Bit

This is a multi-part message in MIME format.

------=_NextPart_5D4A9AAE_0D084ED0_521D4B72
Content-Type: text/plain;
	charset="gb18030"
Content-Transfer-Encoding: base64

SGkgQWRyaWFuLA0KSSB3b3VsZCBsaWtlIHRvIGtub3cgaG93IHRoZSBwYXRjaCBJIHN1Ym1p
dHRlZCBpcyBnb2luZz8gU2hvdWxkIEkgc3VibWl0IGl0IGFnYWluPyBPciB3aWxsIHlvdSBo
ZWxwIG1lIHRvIGZpeCBpdD8gUGxlYXNlIHRlbGwgbWUgd2hhdCBzaG91bGQgSSBkby4NCg0K
DQpCZXN0IHdpc2hlcw0KUm9iaW5zb24gV3U=

------=_NextPart_5D4A9AAE_0D084ED0_521D4B72
Content-Type: text/html;
	charset="gb18030"
Content-Transfer-Encoding: base64

PGRpdj5IaSBBZHJpYW4sPC9kaXY+PGRpdj5JIHdvdWxkIGxpa2UgdG8ga25vdyBob3cgdGhl
IHBhdGNoIEkgc3VibWl0dGVkIGlzIGdvaW5nPyBTaG91bGQgSSBzdWJtaXQgaXQgYWdhaW4/
IE9yIHdpbGwgeW91IGhlbHAgbWUgdG8gZml4IGl0PyBQbGVhc2UgdGVsbCBtZSB3aGF0IHNo
b3VsZCBJIGRvLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+QmVzdCB3aXNoZXM8L2Rpdj48
ZGl2PlJvYmluc29uIFd1PC9kaXY+

------=_NextPart_5D4A9AAE_0D084ED0_521D4B72--





--===============2442607083558866265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2442607083558866265==--




