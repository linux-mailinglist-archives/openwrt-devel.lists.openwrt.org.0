Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21C3112C272
	for <lists+openwrt-devel@lfdr.de>; Sun, 29 Dec 2019 13:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=upha6GdHLsL5tkiWRdJPyKitnnmv+HI6W9PTqPLLHc8=; b=NHhvgWz9/9U34hT/+1Z88MDF6
	eEVhxWDpA+mZmboeiJbWvb7SU5xX2Dws7R0UwyF3wSYEqg9CUvGH4Uii8wXfSKg9/BTKZy0iACFHJ
	vIRC7cEtLvxqueE5kpnG6/wy1yZiAzpcPa/BXs8QRqTXAlh69M2jvNDmyKjhN3Q8e0b3DlEueXyvS
	tZmCfOPU3Ozr1tc3JnH25s4cZeGn4Qo/HsWMrspckB4LgydmiCr+KoamznYmpNefQMnUSeS/aBF+d
	2cR+A5M9GXOZA2AOwTY1xuiMKYJNOrhhjz6d4qysQY6hp4Ra68lKB2LOjDMW8lAq3FwYw2jy+t/LR
	CQnOyPuEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilXfE-00082x-9J; Sun, 29 Dec 2019 12:27:20 +0000
In-Reply-To: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 13:27:09 +0100
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
 <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
To: Hannu Nyman <hannu.nyman@iki.fi>
MIME-Version: 1.0
Message-ID: <mailman.21107.1577622435.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: =?utf-8?q?Petr_Nov=C3=A1k_via_openwrt-devel?=
 <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] Sysupgrade possibly broken in recent
 development snapshots: "message": "Firmware image couldn't be validated"
Content-Type: multipart/mixed; boundary="===============8022237319510537115=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8022237319510537115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============8022237319510537115==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mr85p00im-zteg06011501.me.com ([17.58.23.182])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilXf7-00082L-M4
	for openwrt-devel@lists.openwrt.org; Sun, 29 Dec 2019 12:27:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1577622432; bh=IcFTs2Wb0lZ5xEkxRqob3cVcP1yDHHmFHm8RoarbpWo=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=jeZxOd+RszcXB3IqkhLn+1SL3KEXZpxwASFBRbp8dzRHp0N8jVvPxff6tVBgUIV4j
	 73XsuUJeVXceKgSkeRQB5racRD8G2tEkMMjNKu4nLtcs9ncg7zqXSaUU7SeYG076qf
	 pWF++jIOge31Ovo5MpNsIiTqifTGoKgcUIOu1+8DCDHgxDSGBeWpm2cqoaimdsEwyH
	 o4YrudW7jAybWwPQkA8n/f11vxwqgg07DabQXHiAVM/DVZat4SvBdO95zIig69IrOP
	 C1BEVo/rnHfg4fh+EWuxB93owObq5d0aEFNC2urmUeO5Yp36WF8WFQHthzJMAPUeic
	 sFFQM4uATeKNw==
Received: from [192.168.176.103] (89-24-43-124.nat.epc.tmcz.cz [89.24.43.124])
	by mr85p00im-zteg06011501.me.com (Postfix) with ESMTPSA id 3EFE82A07ED;
	Sun, 29 Dec 2019 12:27:12 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Sysupgrade possibly broken in recent development snapshots:
 "message": "Firmware image couldn't be validated"
From: =?utf-8?Q?Petr_Nov=C3=A1k?= <petrn@me.com>
In-Reply-To: <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
Date: Sun, 29 Dec 2019 13:27:09 +0100
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: quoted-printable
Message-Id: <EF436FD7-6635-4C7C-AAEE-0986F3D578E5@me.com>
References: <5C8E2171-198A-49B9-8306-9A025BE15575@me.com>
 <dca2a586-f2e7-eb4a-5b4a-2a8d33264040@welho.com>
 <37443D9C-A708-463C-A906-3E6A1B5F214E@me.com>
 <275940ab-bc14-b1b1-336a-509ddd73ea5b@iki.fi>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-12-29_03:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
 mlxlogscore=678 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1912290119
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_042713_732798_5DE000BC 
X-CRM114-Status: UNSURE (   5.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.23.182 listed in list.dnswl.org]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider (petrn[at]me.com)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

So rolling back ubus to the version before 2019-12-26 did not seem to =
fix the problem.=


--===============8022237319510537115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8022237319510537115==--
