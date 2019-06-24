Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C9551B74
	for <lists+openwrt-devel@lfdr.de>; Mon, 24 Jun 2019 21:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XNtWUFBivNRmt6CTr0/VOYHu/fg62IBx/3Q3nW/Pjz8=; b=Ptv+PNx+3MStjfKMnue0m2Iy8
	lC2iGTipXvjHaK4LGqmPicbyBWvDbpC6GcQm0w/TXFAMGa4oP3Ky8DeyVtsIn+zLEsXp0QqPapxnl
	FyltXT9ZEIECZ7mrwK0bcugvqbU8ps7i+ghQQCL3K5cCMHprXjC57FTYPbbvdE9f5Q+Y+UugPPY9C
	dNXyY+u0zqfQ5UY5xZfd0sAvlt1xQ3QWXJ66VgA0aj0K3qMnAQnjz3vWNlBiK3GTnU1T2UQZds1fq
	jTmJ6xMi+IIl2SZq3HkBWW9iqB/Xvovh7gUsuZOYRIg8c9io8n15NbYRxwWOyjPrr0hvSdD1nEv00
	q3beaVh9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUjq-00005R-FF; Mon, 24 Jun 2019 19:34:50 +0000
Received: from mail-eopbgr20058.outbound.protection.outlook.com ([40.107.2.58]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUji-00004q-CJ
 for openwrt-devel@lists.openwrt.org; Mon, 24 Jun 2019 19:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rqIKIh4YyH+E6OseGJ7AEr8++UMlKx9wY0VnvA4RVbQ=;
 b=WYKze/5+MFmRh8tD8ktupgUZkpKr8uso1JpHwhIya9WzppZfwSKbkjXgxVbmqjjQIyc48d5wfledBHevQ3I6arZg38wdVt80FNCmW1CdvL/CW1Fqq8kWu6B7fvqeOVh1Ke3UUbfA67RSD+Y0/WTp6cA51XD/iDbZ/vMWz7QwS+k=
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com (10.171.106.21) by
 VI1PR0302MB3374.eurprd03.prod.outlook.com (52.134.13.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.16; Mon, 24 Jun 2019 19:34:36 +0000
Received: from VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3]) by VI1PR0302MB2750.eurprd03.prod.outlook.com
 ([fe80::74:c526:8946:7cf3%2]) with mapi id 15.20.2008.014; Mon, 24 Jun 2019
 19:34:36 +0000
From: Kevin 'ldir' Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: Ben Greear <greearb@candelatech.com>
Thread-Topic: [OpenWrt-Devel] ath10k-ct crash Archer C7 v2 - OpenWrt
 r10307-629e6538a1 - k4.19
Thread-Index: AQHVKa8iwtNbT1gzTUehwdCv9ETVt6arKEoAgAAMCwA=
Date: Mon, 24 Jun 2019 19:34:36 +0000
Message-ID: <CF5B2DFF-E526-4E3A-BB63-2B3F305EBE72@darbyshire-bryant.me.uk>
References: <2886BC46-F77D-4F20-83F4-4E7CECCB9716@darbyshire-bryant.me.uk>
 <0eda2a43-8497-b061-1a99-16eae30dbf8c@candelatech.com>
In-Reply-To: <0eda2a43-8497-b061-1a99-16eae30dbf8c@candelatech.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ldir@darbyshire-bryant.me.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:1268:6500::dc83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bacccb7-9338-48bc-48d8-08d6f8dafddb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
 SRVR:VI1PR0302MB3374; 
x-ms-traffictypediagnostic: VI1PR0302MB3374:
x-microsoft-antispam-prvs: <VI1PR0302MB337435C2A96DBFEE96C67BEFC9E00@VI1PR0302MB3374.eurprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 007814487B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(366004)(39830400003)(136003)(199004)(189003)(86362001)(6246003)(81156014)(6512007)(8676002)(81166006)(8936002)(71190400001)(68736007)(7736002)(46003)(25786009)(305945005)(316002)(4326008)(99936001)(6116002)(33656002)(74482002)(14454004)(36756003)(229853002)(53936002)(6436002)(6916009)(508600001)(99286004)(6486002)(186003)(53546011)(102836004)(6506007)(76176011)(256004)(476003)(5660300002)(66556008)(66476007)(66616009)(4744005)(486006)(11346002)(66946007)(71200400001)(91956017)(76116006)(66446008)(64756008)(446003)(2906002)(73956011)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0302MB3374;
 H:VI1PR0302MB2750.eurprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: darbyshire-bryant.me.uk does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: j3NDwhbOKKv7MOFC2W7AMx/Prvp3/fGEwMzkdkEyWzIsKifDxldgF1Fa2Rlktq/4IkrlrTUC9fyaulMfKowb4DFOB8FaG8l4g6g0EiLOHQcxUhmVZh0xts9+qjy3IIYjr8fClv1j795P0jTG4XB+r2aqNtcrbmsuF5TH3BqaCSYgDFtCRtIHsh0TROqQgDGcB6+tXHKGysCf4UkTyhuQv7xdqVHosLQycwlpIyNr2WINrpXwOP6XbYRi3XPrwrlnLzKlSZbzkmZhWSrOijx2kBDtKdS7SG7wdIdmkpKgEicAjvekzPxbc5qt7sGa281ZSZ2NG2TCPZkvtWxqhH7pqrdY+lSE8JvBODTPvnd4UntCwhLMXDltr3nIK5dSY3m4QoSeKerrEeez+0fzL/8kP2OO3wm2LYfGiNlXPAZ+Ye4=
MIME-Version: 1.0
X-OriginatorOrg: darbyshire-bryant.me.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bacccb7-9338-48bc-48d8-08d6f8dafddb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2019 19:34:36.3818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9151708b-c553-406f-8e56-694f435154a4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kevin@darbyshire-bryant.me.uk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0302MB3374
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_123442_468312_95034EA8 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.58 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ath10k-ct crash Archer C7 v2 - OpenWrt
 r10307-629e6538a1 - k4.19
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2064728616265987622=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2064728616265987622==
Content-Language: en-US
Content-Type: multipart/signed;
	boundary="Apple-Mail=_EF7A00C7-63A4-4148-A410-25F09F332F7B";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

--Apple-Mail=_EF7A00C7-63A4-4148-A410-25F09F332F7B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On 24 Jun 2019, at 19:51, Ben Greear <greearb@candelatech.com> wrote:
>=20
> On 6/23/19 3:33 AM, Kevin 'ldir' Darbyshire-Bryant wrote:
>> Unfortunately flyspray won=E2=80=99t let me create a task, so filing =
this here so it doesn=E2=80=99t get lost.
>> Archer C7 v2 - OpenWrt r10307-629e6538a1 - k4.19
>> Recently seen the following firmware crashes on the device.  Seems to =
be related to my macbook coming out of power save mode.
>> There's been a recent ath10k-ct firmware bump so unclear if this is a =
wireless firmware bug or a kernel driver bug, or both.  Maybe the =
crashlog holds a clue.
>=20
> Hello,
>=20
> Does this seem to be a regression, or it never worked well, or you =
just started testing
> this type of scenario?
>=20
> Thanks,
> Ben

It=E2=80=99s a regression for me at least.  Not seen it before.

Cheers,

Kevin

--Apple-Mail=_EF7A00C7-63A4-4148-A410-25F09F332F7B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEASyssijGxT6XdZEjs6I4m53iM0oFAl0RJcoACgkQs6I4m53i
M0r24g//b1r6/p7YpxO52pFTwZLWPwY3JX8sxRfbEuBY+bxuem76XLCAck6T/xTv
i6/iNiyV4xOzipRaaSixsej5UbnAJk9L6e//IuC/2lsQ8l0UUzUL+em0fmlTP4Br
GQX1EFSbBjGJCPk5XOEHIaF31sNPi2MFTuOoOOc0li5ztygLdeXIFUPz53ENBSo9
55zbhbqWgIu7btN27d5GdsQKr3+OEAqLyOoPWkfxFPTXWupc5ZqXAasV9BBJvxl3
asGp0mWp7wSDSqM1XlxCMpk3IIG+SB8Ayzm5RkaRBclPESzm/eEJH2j1S7RdCJ3t
3+NUUvTw5b51/x8+j9xaCSVkNj8ZcZPeYZmbsAbxE6Upq7vhjqp6wD5xlpaPcNfI
wj8QliOjBKNX18X+nudkTbx1cFMT+be9XF9vZCaF/x5o4OGRtqmvsW47LKv6+ucH
IvvbhnlzrdruF0XOHM9yvPRQ3IQ2yUlIXT1Hr30kRlTEIRx69ZHDCgP6wpbw76fk
F6lg+3l6BRBd2ueJ8ppzlpw+zKWVtwmTIfroY9Gnob8tz5WjUwPJ35B+IzlxwdlV
rpAm2AE3im9uC2YY0uBNpNgq8fA9fA+ZeEUEB768tQfMp7H9yixH1ZmFCIw4Wazu
WjOMENqxQnTqLz0kyDFW1xgwP2EN5fsTyJuZbAjHuDarm5efOhQ=
=74LB
-----END PGP SIGNATURE-----

--Apple-Mail=_EF7A00C7-63A4-4148-A410-25F09F332F7B--


--===============2064728616265987622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2064728616265987622==--

