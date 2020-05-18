Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7431D6EA2
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 03:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:References:Date:In-Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YTN6ZS6Q2CA3KtsEaxfZ87JetyyBfxsbskhBck2Hcjg=; b=NXnFSeGfH+RkgPuiLxCEScM8o
	W7u7DsRkbCXaF8Wq0ZVL7TzNBt4VbMeU5VBgMMOEHeNdb7sISWf8YQ3zfXavGZs2/l4O41ebn9ruy
	1UQsFhj52lw01vPF8e/rtaESbDaE5WW7+kgdNrNu6c3k35JNlrd+5qMEhnYYS7sk6My+YH237LAwR
	4ALuc8ts8f9kKKv8b9Xm0NVzAthMi2Bv+fwd78qsITPN8WB1+WrvoYibhG0fQr+scFmRot/F3ftFu
	5d0uI6wPg3IKuVaKPUDvNdCCv76cwYk5dFmtYWI1Gnjdzn7+LJoaNZIzYl6nrCEVz7zKPgxdxPJxq
	xW9S54P2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaUrn-0003Z0-UH; Mon, 18 May 2020 01:46:55 +0000
In-Reply-To: <CAJN1KkwJAhYXmFTzADT2gSp0OLwJc72J5EnXCveu7G+1s=1nXA@mail.gmail.com>
Date: Sun, 17 May 2020 21:46:41 -0400
References: <CAJN1KkxavQr9d1WC=1aSPcyT2r4pMak0W9YcmD73oymSpzYCCQ@mail.gmail.com>
 <CAJN1KkwJAhYXmFTzADT2gSp0OLwJc72J5EnXCveu7G+1s=1nXA@mail.gmail.com>
To: =?utf-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
MIME-Version: 1.0
Message-ID: <mailman.13752.1589766411.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Raylynn Knight via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Raylynn Knight <rayknight@me.com>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: Re: [OpenWrt-Devel] kirkwood: Looking for github PR device support
 reviewer
Content-Type: multipart/mixed; boundary="===============5538437019178269371=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5538437019178269371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5538437019178269371==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from st43p00im-ztbu10073601.me.com ([17.58.63.184])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaUrh-0003YV-5b
	for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 01:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=1a1hai;
	t=1589766402; bh=tHzlJJwtpyZVbmQUjs0QdBN7Ray1vyX3hcelZNtTy8E=;
	h=Content-Type:Subject:From:Date:Message-Id:To;
	b=jQNIverNK9PGajRNvlWN0xk6AWGCP/ToDMJWbNSqXT5oUaiuh8AsiAeFD4/H98Z24
	 W2NdsjVth4FSRwe2nhKgCGGiYE3M7zaS4vUsdpB6eXawymGxNiVI8A8d/LwAZ1+rv7
	 xB5SpHX3KA5x+S11oyk0QaRMVzRq9dRWIT7E87wfOSsUQkgTMCqJIxmSqhcETiAHUZ
	 TX0Uy5w0DRxQeRdVxOBJmE2W1I7mUCVangVJtQWFw40vPWgGXLj6DHxllWLcr4bs4G
	 QJapMPZkTaFDe5UXWjSe2EfRxaio2fBTroppc9ERxQB2+yPiw5j9eVj8zDoTZnwvde
	 8d0zW4NcSL72w==
Received: from imac-27-2019.lan (c-71-204-6-23.hsd1.ga.comcast.net [71.204.6.23])
	by st43p00im-ztbu10073601.me.com (Postfix) with ESMTPSA id 980EE8203BA;
	Mon, 18 May 2020 01:46:42 +0000 (UTC)
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: [OpenWrt-Devel] kirkwood: Looking for github PR device support
 reviewer
From: Raylynn Knight <rayknight@me.com>
In-Reply-To: <CAJN1KkwJAhYXmFTzADT2gSp0OLwJc72J5EnXCveu7G+1s=1nXA@mail.gmail.com>
Date: Sun, 17 May 2020 21:46:41 -0400
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <E4143C9F-46DA-4B49-B42C-C4979EE1B067@me.com>
References: <CAJN1KkxavQr9d1WC=1aSPcyT2r4pMak0W9YcmD73oymSpzYCCQ@mail.gmail.com>
 <CAJN1KkwJAhYXmFTzADT2gSp0OLwJc72J5EnXCveu7G+1s=1nXA@mail.gmail.com>
To: =?utf-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.676
 definitions=2020-05-17_09:2020-05-15,2020-05-17 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011 mlxscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-2002250000 definitions=main-2005180015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_184649_282453_BF9C3C94 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.63.184 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [rayknight[at]me.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.63.184 listed in wl.mailspike.net]

I have two of these devices.  One with Wifi and one without.  I=E2=80=99d =
like to test with your patch, but step 2 is:

Step two -> Use kwboot tool to upload openwrt u-boot to RAM:

Where can I find the appropriate patch for u-boot? =20

Ray



> On May 17, 2020, at 3:40 PM, Pawe=C5=82 Dembicki =
<paweldembicki@gmail.com> wrote:
>=20
> On 21.04.2020 at 07:20 Pawel Dembicki <paweldembicki@gmail.com> wrote:
>>=20
>> Hi everybody,
>>=20
>> sometime ago I sent github PR[1] with support for Check Point L-50.
>>=20
>> Could someone take a look at this and review it?
>>=20
>> [1] https://github.com/openwrt/openwrt/pull/2719
>>=20
>=20
> Anyone?
> Adrian helped me with a lot, but He need someone for review.
>=20
> DTS was accepted by upstream. U-boot switch driver patches was sent,
> but they are still without review from upstream.
>=20
> Best regards,
> Pawel Dembicki
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel



--===============5538437019178269371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5538437019178269371==--
